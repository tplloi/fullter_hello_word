import 'package:flutter/material.dart';
import 'package:hello_word/base/const/Constants.dart';
import 'package:hello_word/base/util/UIUtils.dart';

class ErrorRetryWidget extends StatelessWidget {
  final String errorMessage;

  final Function onRetryPressed;

  const ErrorRetryWidget({
    Key key,
    this.errorMessage,
    this.onRetryPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            errorMessage,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: Constants.text_medium,
            ),
          ),
          SizedBox(height: Constants.margin_padding_medium),
          UIUtils().getRaisedButton(
              "Click to Retry",
              () => {
                    onRetryPressed(),
                  })
        ],
      ),
    );
  }
}
