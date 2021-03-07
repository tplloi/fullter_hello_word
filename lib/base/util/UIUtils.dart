import 'package:flutter/material.dart';
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
    );
  }

  ElevatedButton getButton(
    String text,
    Function() func,
  ) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Colors.white70,//bkg color
        onPrimary: Colors.black,//text color
        shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(Constants.radius_medium),
        ),
      ),

      child: new Text(
        text,
        style: TextStyle(
          // color: Colors.black,
          fontSize: Constants.text_medium,
        ),
      ),
      // color: Colors.white70,
      onPressed: () => {
        func.call(),
      },
    );
  }

  OutlineButton getOutlineButton(
    String text,
    Function() func,
  ) {
    return OutlineButton(
      child: Text(text),
      onPressed: () {
        func.call();
      },
      borderSide: BorderSide(
        color: Colors.red,
        width: 2,
        style: BorderStyle.solid,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
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
      fontSize: Constants.text_medium,
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
}
