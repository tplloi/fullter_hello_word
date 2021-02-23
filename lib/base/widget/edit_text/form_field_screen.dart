import 'package:flutter/material.dart';
import 'package:hello_word/base/util/ui_utils.dart';

class FormFieldScreen extends StatefulWidget {
  @override
  _FormFieldScreenState createState() => _FormFieldScreenState();
}

class _FormFieldScreenState extends State<FormFieldScreen> {
  final formKey = GlobalKey<FormState>();
  bool isAutoValidate = false;
  var name;
  var tel;
  var email;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils().getAppBar(
        "FormFieldScreen",
        () => Navigator.pop(context),
      ),
      body: ListView(
        children: <Widget>[
          Form(
            key: formKey,
            autovalidate: isAutoValidate,
            child: Column(
              children: <Widget>[
                TextFormField(
                  decoration: const InputDecoration(labelText: 'Name'),
                  keyboardType: TextInputType.text,
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                  onSaved: (value) => name = value,
                ),
                TextFormField(
                  decoration: const InputDecoration(labelText: 'Tel'),
                  keyboardType: TextInputType.phone,
                  validator: (value) {
                    if (value.length != 11)
                      return 'Tel Number must be 11 digit';
                    else
                      return null;
                  },
                  onSaved: (value) => tel = value,
                ),
                TextFormField(
                  decoration: const InputDecoration(labelText: 'Email'),
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    Pattern pattern =
                        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
                    RegExp regex = new RegExp(pattern);
                    if (!regex.hasMatch(value))
                      return 'Not Valid Email';
                    else
                      return null;
                  },
                  onSaved: (value) => email = value,
                ),
                SizedBox(height: 10),
                RaisedButton(
                  onPressed: validateInputs,
                  child: Text('Validate'),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  void validateInputs() {
    if (formKey.currentState.validate()) {
      formKey.currentState.save();
    } else {
      // After input, turn on automatic inspection
      setState(() => isAutoValidate = true);
    }
  }

  Future<bool> willPop() {
    return showDialog(
      builder: (context) => AlertDialog(
        title: Text('Exit the page?'),
        actions: <Widget>[
          FlatButton(
            child: Text('No'),
            onPressed: () => Navigator.pop(context, false),
          ),
          FlatButton(
            child: Text('Yes'),
            onPressed: () => Navigator.pop(context, true),
          ),
        ],
      ),
      context: context,
    );
  }
}
