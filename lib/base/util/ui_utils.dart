import 'package:flutter/material.dart';

class UIUtils {
  AppBar getAppBar(
    String text,
    Function() onPressed,
  ) {
    return AppBar(
      title: Text(text),
      centerTitle: true,
      leading: IconButton(
        icon: Icon(Icons.arrow_back, color: Colors.white),
        onPressed: () => onPressed.call(),
      ),
      backgroundColor: Colors.blue,
    );
  }

  RaisedButton getRaisedButton(
    String text,
    Function() func,
  ) {
    return RaisedButton(
      child: new Text(
        text,
        style: UIUtils().getStyleText(),
      ),
      color: Colors.white70,
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
      fontSize: 16.0,
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
