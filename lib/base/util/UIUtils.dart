import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/base/const/Constants.dart';

class UIUtils {
  //TODO add onPressCodeGitPubdev
  AppBar getAppBar(
    String text,
    Function() onPressed,
    Function() onPressCodeViewer,
  ) {
    Widget _buildActionCodeWidget() {
      if (onPressCodeViewer == null) {
        return Container();
      } else {
        return IconButton(
          icon: Icon(
            Icons.code,
            color: Colors.white,
          ),
          onPressed: () {
            onPressCodeViewer?.call();
          },
        );
      }
    }

    return AppBar(
      title: Text(text),
      centerTitle: true,
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
        onPressed: () => onPressed.call(),
      ),

      //add action on appbar
      actions: <Widget>[
        _buildActionCodeWidget(),
      ],

      backgroundColor: Colors.blue,
      brightness: Brightness.dark,
    );
  }

  ElevatedButton getButton(
    String text,
    Function() func,
  ) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Colors.white70, //bkg color
        onPrimary: Colors.black, //text color
        shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(Constants.radiusMedium),
        ),
      ),

      child: new Text(
        text,
        style: TextStyle(
          // color: Colors.black,
          fontSize: Constants.txtMedium,
        ),
      ),
      // color: Colors.white70,
      onPressed: () => {
        func.call(),
      },
    );
  }

  OutlinedButton getOutlineButton(
    String text,
    Function() func,
  ) {
    return OutlinedButton(
      child: Text(text),
      onPressed: () {
        func.call();
      },
      style: ElevatedButton.styleFrom(
        side: BorderSide(
          width: 2.0,
          color: Colors.red,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Constants.radiusRound),
        ),
      ),
    );
  }

  Text getText(String text) {
    return Text(
      text,
      style: UIUtils().getStyleText(),
    );
  }

  TextStyle getStyleText() {
    return TextStyle(
      color: Colors.black,
      fontSize: Constants.txtMedium,
    );
  }

  TextStyle getCustomFontTextStyle() {
    return TextStyle(
      color: Colors.blueAccent,
      fontFamily: 'Pacifico',
      fontWeight: FontWeight.w400,
      fontSize: 36.0,
    );
  }

  LinearGradient getCustomGradient() {
    return LinearGradient(
        colors: [Colors.pink, Colors.blueAccent],
        begin: const FractionalOffset(0.0, 0.0),
        end: const FractionalOffset(0.6, 0.0),
        stops: [0.0, 0.6],
        tileMode: TileMode.clamp);
  }

  CircularProgressIndicator getCircularProgressIndicator(Color color) {
    return CircularProgressIndicator(
      valueColor: AlwaysStoppedAnimation<Color>(color),
    );
  }

  Future sleep(int timeInSecond, Function function) {
    return new Future.delayed(
      Duration(seconds: timeInSecond),
      () => function.call(),
    );
  }

  void showAlertDialog(
    BuildContext context,
    String title,
    String message,
    String cancelTitle,
    VoidCallback cancelAction,
    String okTitle,
    VoidCallback okAction,
  ) {
    showCupertinoDialog(
      context: context,
      builder: (context) => CupertinoAlertDialog(
        content: Text(
          message,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: Color(0xff232426),
          ),
        ),
        title: title == null ? null : Text(title),
        actions: [
          if (cancelTitle != null)
            CupertinoDialogAction(
              child: Text(
                cancelTitle,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff0A79F8),
                ),
              ),
              isDefaultAction: true,
              onPressed: () {
                Navigator.of(context, rootNavigator: true).pop("Discard");
                if (cancelAction != null) {
                  cancelAction();
                }
              },
            ),
          if (okTitle != null)
            CupertinoDialogAction(
              child: Text(
                okTitle,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xffFF0000),
                ),
              ),
              onPressed: () {
                Navigator.of(context, rootNavigator: true).pop("Discard");
                if (okAction != null) {
                  okAction();
                }
              },
            ),
        ],
      ),
    );
  }

  void showErrorDialog(
    BuildContext context,
    String title,
    String message,
    String okTitle,
    VoidCallback okCallback,
  ) {
    showAlertDialog(
      context,
      title,
      message,
      null,
      null,
      okTitle,
      okCallback,
    );
  }

  void showSnackBar(
    String title,
    String message,
  ) {
    Get.snackbar(
      title, // title
      message, // message
      barBlur: 20,
      isDismissible: true,
      duration: Duration(seconds: 3),
    );
  }

  void showDialogSuccess(
    BuildContext context,
    String msg,
    VoidCallback onClickConfirm,
  ) {
    showGeneralDialog(
      barrierDismissible: false,
      barrierColor: Colors.black.withOpacity(0.5),
      transitionDuration: Duration(milliseconds: 500),
      context: context,
      pageBuilder: (_, __, ___) {
        return Center(
          child: Container(
            width: 300,
            margin: EdgeInsets.all(Constants.marginPaddingMedium),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(Constants.radiusMedium),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: Constants.marginPaddingMedium),
                AvatarGlow(
                  glowColor: Colors.green,
                  endRadius: 60,
                  duration: Duration(milliseconds: 2000),
                  repeat: true,
                  showTwoGlows: true,
                  repeatPauseDuration: Duration(milliseconds: 100),
                  child: Image.asset(
                    "assets/images/ic_success.png",
                    height: 60,
                    width: 60,
                  ),
                ),
                // SizedBox(height: DimenConstants.marginPaddingMedium),
                Text(
                  msg,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff232426),
                  ),
                ),
                SizedBox(height: Constants.radiusMedium),
                Divider(
                  color: Color(0xffC8C8CA),
                  height: 1,
                ),
                Container(
                  width: double.infinity,
                  height: Constants.heightButton,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                      primary: Color(0xff0A79F8),
                      // backgroundColor: Colors.white,
                      textStyle: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    onPressed: () {
                      Get.back();
                    },
                    child: Text(
                      "Đóng",
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
      transitionBuilder: (_, anim, __, child) {
        return ScaleTransition(
          scale: CurvedAnimation(
            parent: anim,
            curve: Curves.bounceIn,
            reverseCurve: Curves.bounceIn,
          ),
          child: child,
        );
      },
    );
  }

  Widget buildHorizontalDivider(Color color) {
    return Container(
      margin: EdgeInsets.all(0.0),
      height: 1,
      width: double.maxFinite,
      color: color,
    );
  }
}
