import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/base/const/Constants.dart';
import 'package:hello_word/base/util/UIUtils.dart';

class ImageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils().getAppBar(
        "ImageScreen",
        () => Get.back(),
        null,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(width: double.infinity, height: 15.0),
              getImageAssetWidget(),
              SizedBox(height: 15.0),
              getImageNetworkWidget(),
              SizedBox(height: 15.0),
              getIconWidget(),
              SizedBox(height: 15.0),
              CircleAvatar(
                radius: 20,
                backgroundImage: NetworkImage(Constants.dummyImageLink),
              ),
              SizedBox(height: 15.0),
              ClipOval(
                child: Image.network(
                  Constants.dummyImageLink,
                  height: 300,
                  width: 500,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 15.0),
              ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(15.0)),
                child: Image.network(
                  Constants.dummyImageLink,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.white,
    );
  }

  Widget getImageAssetWidget() {
    return Image.asset(
      "assets/images/iv.jpg",
      width: 300,
      height: 200,
    );
  }

  Widget getImageNetworkWidget() {
    // return Image.network('https://picsum.photos/250?image=9');
    return Image.network(
        'https://github.com/flutter/plugins/raw/master/packages/video_player/video_player/doc/demo_ipod.gif?raw=true');
  }

  Widget getIconWidget() {
    return Icon(Icons.email);
  }
}
