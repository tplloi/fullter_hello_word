import 'package:flutter/material.dart';
import 'package:hello_word/base/util/UIUtils.dart';
import 'package:scoped_model/scoped_model.dart';

//https://pub.dev/packages/scoped_model
class ScopedModelCounterScreen extends StatelessWidget {
  final CounterModel model = CounterModel();

  @override
  Widget build(BuildContext context) {
    return ScopedModel<CounterModel>(
      model: model,
      child: Stack(
        children: [
          CounterHome("ScopedModelCounterScreen"),
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              margin: EdgeInsets.all(150),
              child: ScopedModelDescendant<CounterModel>(
                builder: (context, child, model) {
                  return Text(
                    "Text in Parent ${model._counter}",
                    style: TextStyle(
                      color: Colors.pink,
                      fontSize: 30,
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CounterModel extends Model {
  int _counter = 0;

  void increment() {
    _counter++;
    notifyListeners();
  }

  void minus() {
    _counter--;
    notifyListeners();
  }
}

class CounterHome extends StatelessWidget {
  final String title;

  CounterHome(this.title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils().getAppBar(
        title,
            () => Navigator.pop(context),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 50,
            ),
            UIUtils().getText("You have pushed the button this many times:"),
            ScopedModelDescendant<CounterModel>(
              builder: (context, child, model) {
                return Text(
                  "${model._counter}",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 25,
                  ),
                );
              },
            ),
            ScopedModelDescendant<CounterModel>(
              builder: (context, child, model) {
                return UIUtils().getRaisedButton("-", () => {model.minus()});
              },
            ),
          ],
        ),
      ),
      floatingActionButton: ScopedModelDescendant<CounterModel>(
        builder: (context, child, model) {
          return FloatingActionButton(
              onPressed: () {
                model.increment();
              },
              child: Icon(
                Icons.add,
              ));
        },
      ),
    );
  }
}
