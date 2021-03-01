import 'package:flutter/material.dart';
import 'package:hello_word/base/const/Constants.dart';
import 'package:hello_word/base/util/UIUtils.dart';

class LoadingWidget extends StatelessWidget {
  final String loadingMessage;

  const LoadingWidget({
    Key key,
    this.loadingMessage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            loadingMessage,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: Constants.text_medium,
            ),
          ),
          SizedBox(height: Constants.margin_padding_medium),
          UIUtils().getCircularProgressIndicator(Colors.white),
        ],
      ),
    );
  }
}
