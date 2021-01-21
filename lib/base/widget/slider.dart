import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyHome(),
    theme: ThemeData(
      primarySwatch: Colors.blue,
      accentColor: Colors.blue,
      backgroundColor: Colors.white,
    ),
  ));
}

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar
      appBar: AppBar(
        // AppBar Title
        title: Text("SliderWidget"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SliderWidget(),
            SizedBox(
              height: 100,
            ),
            SliderThemeWidget()
          ],
        ),
      ),
    );
  }
}

class SliderWidget extends StatefulWidget {
  @override
  _SliderWidgetState createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  double value = 0;
  var rangeValues = const RangeValues(20, 80);

  @override
  Widget build(BuildContext context) {
    return Slider(
      value: value,
      min: 0,
      max: 100,
      onChanged: (v) {
        setState(() =>
        {
          print("Slider value " + value.toString()),
          value = v.roundToDouble()
        });
      },
    );
  }
}

class SliderThemeWidget extends StatefulWidget {
  @override
  _SliderThemeWidgetState createState() => _SliderThemeWidgetState();
}

class _SliderThemeWidgetState extends State<SliderThemeWidget> {
  double value = 0;

  @override
  Widget build(BuildContext context) {
    return SliderTheme(
      data: SliderTheme.of(context).copyWith(
//                activeTickMarkColor:Colors.yellowAccent,
        activeTrackColor: Colors.yellowAccent,
        //Actual progress color
//                inactiveTickMarkColor:Colors.black
        thumbColor: Colors.black,
        //The color of the center of the slider
        inactiveTrackColor: Colors.red,
        //Default color of progress bar
        valueIndicatorColor: Colors.blue,
        //Style background color to remind progress
        valueIndicatorTextStyle: TextStyle(
          //The style of the text inside the cue bubble
          color: Colors.white,
        ),
        inactiveTickMarkColor: Colors.blue,
        //After divisions divide the progress line, the color of the interval between the intermittent lines
        overlayColor: Colors.pink, //Slider edge color
      ),
      child: Container(
        width: 340.0,
        margin: EdgeInsets.fromLTRB(0.0, 50.0, 0.0, 0.0),
        child: Row(
          children: <Widget>[
            Text('0.0'),
            Expanded(
              flex: 1,
              child: Slider(
                value: value,
                label: '$value',
                divisions: 10,
                onChanged: (v) {
                  setState(() {
                    value = v.floorToDouble();
                    print("SliderThemeWidget value " + value.toString());
                  });
                },
                min: 0.0,
                max: 100.0,
              ),
            ),
            Text('100.0'),
          ],
        ),
      ),
    );
  }
}
