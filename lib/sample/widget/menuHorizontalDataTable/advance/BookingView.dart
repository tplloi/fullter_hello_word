import 'package:drag_to_expand/drag_to_expand.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/lib/common/const/DimenConstants.dart';
import 'package:hello_word/lib/core/BaseStatefulState.dart';
import 'package:hello_word/lib/util/UIUtils.dart';
import 'package:horizontal_data_table/horizontal_data_table.dart';

import 'ControllerBook.dart';
import 'model/DummyFloor.dart';
import 'model/DummyHeaderDescription.dart';
import 'model/DummyHouse.dart';
import 'model/DummyModelIndicator.dart';
import 'indicator/MD2Indicator.dart';
import 'indicator/MD2IndicatorSize.dart';

class BookingView extends StatefulWidget {
  @override
  _SupportViewState createState() => _SupportViewState();
}

class _SupportViewState extends BaseStatefulState {
  final ControllerBook _controllerBook = Get.put(ControllerBook());
  final double widthItem = 50;
  final double heightItem = 70;
  DragToExpandController _dragToExpandController;

  @override
  void initState() {
    _dragToExpandController = DragToExpandController();
    int sizeItem = 15;
    _controllerBook.buildListDummyModelIndicator();
    _controllerBook.buildListDummyHeaderDescription(sizeItem);
    _controllerBook.buildListDummyFloor(sizeItem);
    super.initState();
  }

  @override
  void dispose() {
    _dragToExpandController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff142B74),
      appBar: AppBar(
        backgroundColor: Color(0xff071243),
        brightness: Brightness.dark,
        centerTitle: false,
        elevation: 1,
        title: Text(
          "Giỏ hàng The Aston Luxury Residence",
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () => Get.back(),
        ),
      ),
      body: Stack(
        children: [
          Column(
            children: [
              SizedBox(height: DimenConstants.marginPaddingTiny),
              _buildGuideStatus(),
              SizedBox(height: DimenConstants.marginPaddingTiny),
              _buildIndicator(),
              UIUtils.buildHorizontalDivider(
                  Color(0xffF9A117), double.maxFinite),
              _getGridWidget(),
            ],
          ),
          DragToExpand(
            controller: _dragToExpandController,
            minSize: 0,
            maxSize: MediaQuery.of(context).size.height * 0.3,
            baseSide: BaseSide.bottom,
            toggleOnTap: true,
            draggable: Center(
              child: Container(
                color: Colors.red,
                padding: EdgeInsets.all(DimenConstants.marginPaddingMedium),
                child: Text(
                  "Drag to open",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),
            draggableWhenOpened: Center(
              child: Container(
                color: Colors.green,
                padding: EdgeInsets.all(DimenConstants.marginPaddingMedium),
                child: Text(
                  "Drag to close",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),
            child: Container(color: Colors.yellow),
            clipOverflow: true,
            animationDuration: 500,
          ),
        ],
      ),
    );
  }

  Widget _buildGuideStatus() {
    return Container(
      color: Color(0xff071243),
      padding: EdgeInsets.all(DimenConstants.marginPaddingTiny),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/images/ic_circle_green.png",
            width: 8,
            height: 8,
          ),
          SizedBox(width: DimenConstants.marginPaddingTiny),
          Text(
            "Còn hàng",
            style: TextStyle(
              color: Color(0xff00BA26),
              fontSize: 10,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(width: DimenConstants.marginPaddingLarge),
          Image.asset(
            "assets/images/ic_circle_violet.png",
            width: 8,
            height: 8,
          ),
          SizedBox(width: DimenConstants.marginPaddingTiny),
          Text(
            "Đã đặt mua",
            style: TextStyle(
              color: Color(0xff697EFE),
              fontSize: 10,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(width: DimenConstants.marginPaddingLarge),
          Image.asset(
            "assets/images/ic_circle_red.png",
            width: 8,
            height: 8,
          ),
          SizedBox(width: DimenConstants.marginPaddingTiny),
          Text(
            "Đã bán",
            style: TextStyle(
              color: Color(0xffF13232),
              fontSize: 10,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(width: DimenConstants.marginPaddingLarge),
          Image.asset(
            "assets/images/ic_lock.png",
            width: 8,
            height: 8,
          ),
          SizedBox(width: DimenConstants.marginPaddingTiny),
          Text(
            "Không mở bán",
            style: TextStyle(
              color: Color(0xffffffff),
              fontSize: 10,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildIndicator() {
    return Obx(() {
      return DefaultTabController(
        length: _controllerBook.listDummyModelIndicator.length,
        child: TabBar(
          labelPadding: EdgeInsets.all(DimenConstants.marginPaddingTiny),
          physics: BouncingScrollPhysics(),
          // labelStyle: TextStyle(
          //   fontWeight: FontWeight.w700,
          //   fontSize: 18,
          // ),
          // unselectedLabelStyle: TextStyle(
          //   fontWeight: FontWeight.w400,
          //   fontSize: 22,
          // ),
          indicatorSize: TabBarIndicatorSize.label,
          // labelColor: Color(0xffF15A24),
          // unselectedLabelColor: Colors.lightBlue,
          isScrollable: true,
          indicator: MD2Indicator(
            indicatorSize: MD2IndicatorSize.tiny,
            indicatorHeight: 5.0,
            indicatorColor: Color(0xffF9A117),
          ),
          onTap: (index) {
            _controllerBook.setSelectIndicator(index);
          },
          tabs: buildListTab(),
        ),
      );
    });
  }

  List<Widget> buildListTab() {
    var listWidget = <Widget>[];
    for (int i = 0; i < _controllerBook.listDummyModelIndicator.length; i++) {
      DummyModelIndicator dummyModelIndicator =
          _controllerBook.listDummyModelIndicator[i];
      bool isSelected = dummyModelIndicator.isSelected;
      Container container = Container(
        padding: EdgeInsets.fromLTRB(
          0,
          0,
          0,
          2,
        ),
        child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.fromLTRB(
            DimenConstants.marginPaddingMedium,
            DimenConstants.marginPaddingTiny,
            DimenConstants.marginPaddingMedium,
            DimenConstants.marginPaddingTiny,
          ),
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              text: dummyModelIndicator.name,
              style: TextStyle(
                color: Colors.white,
                fontSize: 11,
                fontWeight: FontWeight.w400,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: "\n(",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 11,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                TextSpan(
                    text: dummyModelIndicator.no1.toString(),
                    style: TextStyle(color: Color(0xff00BA26))),
                TextSpan(
                  text: "/${dummyModelIndicator.no2})",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 11,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          // width: 100.0,
          // height: DimenConstants.buttonHeight,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
            border: Border.all(
              color: isSelected == true ? Color(0xffF9A117) : Color(0xff6F7DB4),
            ),
            color: isSelected == true ? Color(0x22F9A117) : Color(0x336F7DB4),
          ),
        ),
      );
      listWidget.add(container);
    }

    return listWidget;
  }

  Widget _getGridWidget() {
    return Obx(() {
      return Expanded(
        child: Container(
          child: HorizontalDataTable(
            leftHandSideColumnWidth: widthItem,
            rightHandSideColumnWidth: widthItem *
                (_controllerBook.listDummyHeaderDescription.length - 1),
            isFixedHeader: true,
            headerWidgets: _generateHeaderWidget(),
            leftSideItemBuilder: _generateLeftSideWidget,
            rightSideItemBuilder: _generateRightSideWidget,
            itemCount: _controllerBook.listDummyFloor.length,
            rowSeparatorWidget: const Divider(
              color: Color(0xff5B6CA4),
              height: 1.0,
              thickness: 0.0,
            ),
            leftHandSideColBackgroundColor: Color(0xff06133E),
            rightHandSideColBackgroundColor: Color(0xff0E1E51),
            enablePullToRefresh: false,
          ),
          height: MediaQuery.of(context).size.height,
        ),
      );
    });
  }

  List<Widget> _generateHeaderWidget() {
    List<Widget> listWidget = [];
    for (int i = 0;
        i < _controllerBook.listDummyHeaderDescription.length;
        i++) {
      Widget wg = _getTitleItemWidget(
        i,
        _controllerBook.listDummyHeaderDescription[i],
      );
      listWidget.add(wg);
    }
    return listWidget;
  }

  Widget _getTitleItemWidget(
    int index,
    DummyHeaderDescription dummyHeaderDescription,
  ) {
    return Row(
      children: [
        Container(
          width: widthItem - 1,
          height: widthItem * 4,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                color: index == 0 ? Colors.transparent : Color(0xff142B74),
                height: widthItem - 1,
                padding: EdgeInsets.all(DimenConstants.marginPaddingTiny),
                alignment: Alignment.center,
                child: Text(
                  index == 0 ? "Căn" : dummyHeaderDescription.number,
                  style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w400,
                    color: index == 0 ? Color(0xffFFDA2D) : Color(0xffffffff),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              UIUtils.buildHorizontalDivider(Color(0xff5B6CA4), widthItem),
              Container(
                color: index == 0 ? Colors.transparent : Color(0xff142B74),
                height: widthItem - 1,
                padding: EdgeInsets.all(DimenConstants.marginPaddingTiny),
                alignment: Alignment.center,
                child: Text(
                  index == 0 ? "Loại phòng" : dummyHeaderDescription.type,
                  style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w400,
                    color: index == 0 ? Color(0xffFFDA2D) : Color(0xffffffff),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              UIUtils.buildHorizontalDivider(Color(0xff5B6CA4), widthItem),
              Container(
                color: index == 0 ? Colors.transparent : Color(0xff142B74),
                height: widthItem - 1,
                padding: EdgeInsets.all(DimenConstants.marginPaddingTiny),
                alignment: Alignment.center,
                child: Text(
                  index == 0 ? "Hướng" : dummyHeaderDescription.direction,
                  style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w400,
                    color: index == 0 ? Color(0xffFFDA2D) : Color(0xffffffff),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              UIUtils.buildHorizontalDivider(Color(0xff5B6CA4), widthItem),
              Container(
                color: index == 0 ? Colors.transparent : Color(0xff142B74),
                height: widthItem - 1,
                padding: EdgeInsets.all(DimenConstants.marginPaddingTiny),
                alignment: Alignment.center,
                child: Text(
                  index == 0 ? "Diện tích" : "${dummyHeaderDescription.s}\nm2",
                  style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w400,
                    color: index == 0 ? Color(0xffFFDA2D) : Color(0xffffffff),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
        UIUtils.buildVerticalDivider(Color(0xff5B6CA4), widthItem * 4),
      ],
    );
  }

  Widget _generateLeftSideWidget(
    BuildContext context,
    int index,
  ) {
    DummyFloor dummyFloor = _controllerBook.listDummyFloor[index];
    return Container(
      width: widthItem,
      height: heightItem,
      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "T${dummyFloor.floorIndex}",
                  style: TextStyle(
                    color: Color(0xffFFDA2D),
                    fontSize: 11,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: DimenConstants.marginPaddingTiny),
                Container(
                  padding: EdgeInsets.all(3),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(0.0)),
                    border: Border.all(
                      color: Color(0xffF9A117),
                    ),
                  ),
                  child: Text(
                    "${dummyFloor.floorIndex}",
                    style: TextStyle(
                      color: Color(0xff59C36A),
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
          ),
          UIUtils.buildVerticalDivider(Color(0xff5B6CA4), heightItem),
        ],
      ),
    );
  }

  Widget _generateRightSideWidget(
    BuildContext context,
    int index,
  ) {
    DummyFloor dummyFloor = _controllerBook.listDummyFloor[index];
    List<Widget> listWidget = [];
    dummyFloor.listDummyHouse.forEach((dummyHouse) {
      Widget wg = _buildDetailWidget(dummyHouse);
      listWidget.add(wg);
    });
    return Row(
      children: listWidget,
    );
  }

  Widget _buildDetailWidget(DummyHouse dummyHouse) {
    Widget _buildText(
      String text,
      Color txtColor,
    ) {
      bool isSelected = dummyHouse.isSelected;
      return Row(
        children: [
          Container(
            color: isSelected ? Color(0xff59C36A) : Colors.transparent,
            width: widthItem - 1,
            height: heightItem,
            alignment: Alignment.center,
            child: Text(
              text,
              style: TextStyle(
                fontSize: 10,
                fontWeight: isSelected ? FontWeight.w900 : FontWeight.w400,
                color: isSelected ? Colors.white : txtColor,
              ),
              textAlign: TextAlign.center,
              maxLines: 2,
            ),
          ),
          UIUtils.buildVerticalDivider(Color(0xff5B6CA4), heightItem),
        ],
      );
    }

    if (dummyHouse.status == DummyHouse.available) {
      return InkWell(
        child: _buildText(
          "${dummyHouse.price}\ntỷ",
          Color(0xff59C36A),
        ),
        onTap: () {
          _controllerBook.setSelectedDummyHouse(dummyHouse);
        },
      );
    } else if (dummyHouse.status == DummyHouse.booked) {
      return _buildText(
        "Đã đặt\nmua",
        Color(0xff697EFE),
      );
    } else if (dummyHouse.status == DummyHouse.sold) {
      return _buildText(
        "Đã bán",
        Color(0xffF13232),
      );
    } else {
      return Row(
        children: [
          Container(
            width: widthItem - 1,
            height: heightItem,
            alignment: Alignment.center,
            child:
                Image.asset("assets/images/ic_lock.png", width: 15, height: 15),
          ),
          UIUtils.buildVerticalDivider(Color(0xff5B6CA4), heightItem),
        ],
      );
    }
  }
}