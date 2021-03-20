import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hello_word/lib/util/UIUtils.dart';

abstract class BaseStatefulState<T extends StatefulWidget> extends State<T> {
  BaseStatefulState();

  void showAlertDialog(
    BuildContext context,
    String title,
    String message,
    String cancelTitle,
    VoidCallback cancelAction,
    String okTitle,
    VoidCallback okAction,
  ) {
    UIUtils.showAlertDialog(
      context,
      title,
      message,
      cancelTitle,
      cancelAction,
      okTitle,
      okAction,
    );
  }

  void showErrorDialog(
    BuildContext context,
    String title,
    String message,
    String okTitle,
    VoidCallback okCallback,
  ) {
    UIUtils.showErrorDialog(
      context,
      title,
      message,
      okTitle,
      okCallback,
    );
  }

  void showSnackBar(
    String title,
    String message,
  ) {
    UIUtils.showSnackBar(
      title,
      message,
    );
  }

  void showDialogSuccess(
    String msg,
    bool barrierDismissible,
    Function onClickConfirm,
  ) {
    UIUtils.showDialogSuccess(
      context,
      msg,
      onClickConfirm,
    );
  }
}
