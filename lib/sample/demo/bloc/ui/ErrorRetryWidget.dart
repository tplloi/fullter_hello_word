import 'package:flutter/material.dart';
import 'package:hello_word/lib/common/const/DimenConstants.dart';
import 'package:hello_word/lib/util/UIUtils.dart';

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
              fontSize: DimenConstants.txtMedium,
            ),
          ),
          SizedBox(height: DimenConstants.marginPaddingMedium),
          UIUtils.getButton(
            "Click to Retry",
            () => {
              onRetryPressed(),
            },
          )
        ],
      ),
    );
  }
}
