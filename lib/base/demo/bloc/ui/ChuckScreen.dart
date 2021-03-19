import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/base/common/const/DimenConstants.dart';
import 'package:hello_word/base/demo/bloc/ui/ErrorRetryWidget.dart';
import 'package:hello_word/base/demo/bloc/ui/LoadingWidget.dart';
import 'package:hello_word/base/util/UIUtils.dart';

import '../block/ChuckBloc.dart';
import '../model/Chuck.dart';
import '../service/AppResponse.dart';

class ChuckScreen extends StatefulWidget {
  final String selectedCategory;

  const ChuckScreen(this.selectedCategory);

  @override
  _ChuckScreenState createState() => _ChuckScreenState();
}

class _ChuckScreenState extends State<ChuckScreen> {
  ChuckBloc _chuckBloc;

  @override
  void initState() {
    super.initState();
    _chuckBloc = ChuckBloc(widget.selectedCategory);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils().getAppBar(
        "ChuckScreen",
        () => Get.back(),
        null,
      ),
      backgroundColor: Color(0x00000000),
      body: RefreshIndicator(
        onRefresh: () => _chuckBloc.getChuck(widget.selectedCategory),
        child: StreamBuilder<AppResponse<Chuck>>(
          stream: _chuckBloc.chuckStream,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              switch (snapshot.data.status) {
                case Status.LOADING:
                  return LoadingWidget(loadingMessage: snapshot.data.message);
                  break;
                case Status.COMPLETED:
                  return ChuckWidget(chuck: snapshot.data.data);
                  break;
                case Status.ERROR:
                  return ErrorRetryWidget(
                    errorMessage: snapshot.data.message,
                    onRetryPressed: () =>
                        _chuckBloc.getChuck(widget.selectedCategory),
                  );
                  break;
              }
            }
            return Container();
          },
        ),
      ),
    );
  }

  @override
  void dispose() {
    _chuckBloc.dispose();
    super.dispose();
  }
}

class ChuckWidget extends StatelessWidget {
  final Chuck chuck;

  const ChuckWidget({
    Key key,
    this.chuck,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: new BoxConstraints.expand(),
      color: new Color(0xFF736AB7),
      child: new Stack(
        children: <Widget>[
          getBackground(),
          getGradient(context),
          getContent(),
        ],
      ),
    );
  }

  Container getBackground() {
    return new Container(
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/iv.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: null /* add child content here */,
      ),
    );
  }

  Container getGradient(BuildContext context) {
    return new Container(
      margin: new EdgeInsets.only(top: 90.0),
      height: MediaQuery.of(context).size.height,
      decoration: new BoxDecoration(
        gradient: new LinearGradient(
          colors: <Color>[new Color(0x00736AB7), new Color(0xFF333333)],
          stops: [0.0, 0.9],
          begin: const FractionalOffset(0.0, 0.0),
          end: const FractionalOffset(0.0, 1.0),
        ),
      ),
    );
  }

  Widget getContent() {
    return new ListView(
      padding: new EdgeInsets.fromLTRB(0.0, 280, 0.0, 32.0),
      children: <Widget>[
        new Container(
          margin: EdgeInsets.all(70.0),
          decoration: BoxDecoration(
            color: Color(0xFFFFFFFF),
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25.0),
              bottomRight: Radius.circular(25.0),
            ),
          ),
          padding: new EdgeInsets.symmetric(horizontal: 32.0),
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Container(
                margin: EdgeInsets.fromLTRB(5, 15, 0.0, 0.0),
                child: new Image.network(
                  chuck.iconUrl,
                  fit: BoxFit.cover,
                ),
              ),
              new Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  chuck.value,
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: DimenConstants.txtMedium,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Roboto'),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
