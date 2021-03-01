import 'package:flutter/material.dart';
import 'package:hello_word/base/util/UIUtils.dart';

class DayPickerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils().getAppBar(
        "DayPickerScreen",
        () => Navigator.pop(context),
      ),
      body: Container(
        decoration: BoxDecoration(color: Colors.yellow),
        child: Center(
          child: DayPickerWidget(),
        ),
      ),
    );
  }
}

class DayPickerWidget extends StatefulWidget {
  @override
  _DayPickerWidgetState createState() => _DayPickerWidgetState();
}

class _DayPickerWidgetState extends State<DayPickerWidget> {
  DateTime _date = DateTime.now();
  TimeOfDay _time = TimeOfDay.now();

  Future<void> chooseDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
      context: context,
      selectableDayPredicate: (datetime) {
        if (datetime.day == 10 || datetime.day == 11 || datetime.day == 12) {
          return false;
        }
        return true;
      },
      initialDatePickerMode: DatePickerMode.day,
      initialDate: _date,
      firstDate: DateTime(2012, 12),
      lastDate: DateTime(2222, 12),
    );
    if (picked != null && picked != _date)
      setState(() => {
            _date = picked,
            print("chooseDate _date " + _date.day.toString()),
          });
    if (picked == null) _date = DateTime.now();
  }

  Future<void> chooseTime(BuildContext context) async {
    final TimeOfDay picked = await showTimePicker(
      context: context,
      initialTime: _time,
    );
    setState(() => {
          _time = picked,
          print("chooseTime _time " + _time.toString()),
        });
    if (picked == null) _time = TimeOfDay.now();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        UIUtils().getRaisedButton("Choose date", () => chooseDate(context)),
        UIUtils().getRaisedButton("Choose time", () => chooseTime(context)),
      ],
    );
  }
}
