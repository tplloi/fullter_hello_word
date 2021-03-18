import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/base/const/Constants.dart';
import 'package:hello_word/base/util/UIUtils.dart';
import 'package:horizontal_data_table/horizontal_data_table.dart';

import 'User.dart';

//https://pub.dev/packages/horizontal_data_table
class HorizontalDataTableScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils().getAppBar(
        "HorizontalDataTableScreen",
        () => Get.back(),
        null,
      ),
      body: DataTableHomePage(),
    );
  }
}

User user = User();

class DataTableHomePage extends StatefulWidget {
  DataTableHomePage({
    Key key,
  }) : super(key: key);

  @override
  _DataTableHomePageState createState() => _DataTableHomePageState();
}

class _DataTableHomePageState extends State<DataTableHomePage> {
  HDTRefreshController _hdtRefreshController = HDTRefreshController();

  static const int sortName = 0;
  static const int sortStatus = 1;
  bool isAscending = true;
  int sortType = sortName;

  @override
  void initState() {
    user.initData(100);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return _getBodyWidget();
  }

  Widget _getBodyWidget() {
    return Container(
      child: HorizontalDataTable(
        leftHandSideColumnWidth: 100,
        rightHandSideColumnWidth: 700,
        isFixedHeader: true,
        headerWidgets: _getTitleWidget(),
        leftSideItemBuilder: _generateFirstColumnRow,
        rightSideItemBuilder: _generateRightHandSideColumnRow,
        itemCount: user.listUserInfo.length,
        rowSeparatorWidget: const Divider(
          color: Colors.pink,
          height: 1.0,
          thickness: 0.0,
        ),
        leftHandSideColBackgroundColor: Color(0x55ff0000),
        rightHandSideColBackgroundColor: Color(0xffffffff),
        enablePullToRefresh: true,
        refreshIndicator: const ClassicHeader(),
        // refreshIndicator: const WaterDropHeader(),
        // refreshIndicator: const CustomHeader(),
        // refreshIndicator: const LinkHeader(),
        // refreshIndicator: const MaterialClassicHeader(),
        // refreshIndicator: BezierHeader(),
        refreshIndicatorHeight: 60,
        onRefresh: () async {
          //Do sth
          await Future.delayed(const Duration(milliseconds: 1500));
          _hdtRefreshController.refreshCompleted();
        },
        htdRefreshController: _hdtRefreshController,
      ),
      height: MediaQuery.of(context).size.height,
    );
  }

  List<Widget> _getTitleWidget() {
    return [
      TextButton(
        child: _getTitleItemWidget(
          'Name' + (sortType == sortName ? (isAscending ? '↓' : '↑') : ''),
          100,
        ),
        onPressed: () {
          sortType = sortName;
          isAscending = !isAscending;
          user.sortName(isAscending);
          setState(() {});
        },
      ),
      TextButton(
        child: _getTitleItemWidget(
          'Status' + (sortType == sortStatus ? (isAscending ? '↓' : '↑') : ''),
          100,
        ),
        onPressed: () {
          sortType = sortStatus;
          isAscending = !isAscending;
          user.sortStatus(isAscending);
          setState(() {});
        },
      ),
      _getTitleItemWidget("Phone", 200),
      _getTitleItemWidget("Register", 100),
      _getTitleItemWidget("Termination", 200),
    ];
  }

  Widget _getTitleItemWidget(
    String label,
    double width,
  ) {
    return Container(
      child: Text(
        label,
        style: TextStyle(
          fontSize: Constants.txtLarge,
          fontWeight: FontWeight.bold,
          color: Colors.red,
        ),
      ),
      width: width,
      height: 56,
      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
      alignment: Alignment.center,
    );
  }

  Widget _generateFirstColumnRow(BuildContext context, int index) {
    return Container(
      child: Text(user.listUserInfo[index].name),
      width: 100,
      height: 52,
      padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
      alignment: Alignment.centerLeft,
    );
  }

  Widget _generateRightHandSideColumnRow(BuildContext context, int index) {
    return Row(
      children: <Widget>[
        Container(
          child: Row(
            children: <Widget>[
              Icon(
                  user.listUserInfo[index].status
                      ? Icons.notifications_off
                      : Icons.notifications_active,
                  color: user.listUserInfo[index].status
                      ? Colors.red
                      : Colors.green),
              Text(user.listUserInfo[index].status ? 'Disabled' : 'Active')
            ],
          ),
          width: 100,
          height: 52,
          padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
          alignment: Alignment.centerLeft,
        ),
        Container(
          child: Text(user.listUserInfo[index].phone),
          width: 200,
          height: 52,
          padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
          alignment: Alignment.centerLeft,
        ),
        Container(
          child: Text(user.listUserInfo[index].registerDate),
          width: 100,
          height: 52,
          padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
          alignment: Alignment.centerLeft,
        ),
        Container(
          child: Text(user.listUserInfo[index].terminationDate),
          width: 200,
          height: 52,
          padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
          alignment: Alignment.centerLeft,
        ),
      ],
    );
  }
}
