import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:hello_word/base/const/constants.dart';
import 'package:hello_word/base/util/ui_utils.dart';

class SwiperScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils().getAppBar(
        "SwiperScreen",
        () => Navigator.pop(context),
      ),
      body: Container(
        padding: EdgeInsets.all(15),
        margin: EdgeInsets.all(15),
        alignment: Alignment.center,
        constraints: BoxConstraints.expand(height: 300),
        child: imageSlider(context),
      ),
    );
  }
}

Swiper imageSlider(context) {
  return new Swiper(
    autoplay: true,
    itemBuilder: (BuildContext context, int index) {
      return new Image.network(
        Constants.dummy_image_link,
        fit: BoxFit.fitHeight,
      );
    },
    itemCount: 10,
    viewportFraction: 0.7,
    scale: 0.8,
  );
}
