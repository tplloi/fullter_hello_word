import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/lib/common/const/Constants.dart';
import 'package:hello_word/lib/common/const/DimenConstants.dart';
import 'package:hello_word/lib/util/UIUtils.dart';
import 'package:kenburns/kenburns.dart';

class KenburnsViewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "KenburnsViewScreen",
        () => Get.back(),
        null,
      ),
      body: Column(
        children: [
          Expanded(
            child: KenBurns(
              minAnimationDuration: Duration(milliseconds: 3000),
              maxAnimationDuration: Duration(milliseconds: 10000),
              maxScale: 8,
              child: Image.network(
                Constants.dummyImageLink,
                fit: BoxFit.cover,
              ),
            ),
            flex: 1,
          ),
          Expanded(
            child: KenBurns.multiple(
              childLoop: 3,
              children: [
                Image.network(
                  Constants.dummyImageLink,
                  fit: BoxFit.cover,
                ),
                Image.network(
                  Constants.dummyImageLink1,
                  fit: BoxFit.cover,
                ),
                Image.network(
                  Constants.dummyImageLink2,
                  fit: BoxFit.cover,
                ),
              ],
            ),
            flex: 1,
          ),
        ],
      ),
    );
  }
}
