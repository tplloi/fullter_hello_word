import 'package:drag_to_expand/drag_to_expand.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/base/common/const/DimenConstants.dart';
import 'package:hello_word/base/core/BaseStatefulState.dart';
import 'package:hello_word/base/util/UIUtils.dart';

class DragToExpandView extends StatefulWidget {
  @override
  _SupportViewState createState() => _SupportViewState();
}

class _SupportViewState extends BaseStatefulState {
  DragToExpandController _dragToExpandControllerLeft;
  DragToExpandController _dragToExpandControllerTop;
  DragToExpandController _dragToExpandControllerRight;
  DragToExpandController _dragToExpandControllerBottom;

  @override
  void initState() {
    _dragToExpandControllerLeft = DragToExpandController();
    _dragToExpandControllerTop = DragToExpandController();
    _dragToExpandControllerRight = DragToExpandController();
    _dragToExpandControllerBottom = DragToExpandController();
    super.initState();
  }

  @override
  void dispose() {
    _dragToExpandControllerLeft?.dispose();
    _dragToExpandControllerTop?.dispose();
    _dragToExpandControllerRight?.dispose();
    _dragToExpandControllerBottom?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff142B74),
      appBar: UIUtils().getAppBar(
          "DragToExpandView",
          () => {
                Get.back(),
              },
          () => null),
      body: Stack(
        children: [
          Container(
            color: Colors.blueGrey,
            width: double.infinity,
            height: double.infinity,
          ),
          _buildDragToExpandView(
            _dragToExpandControllerLeft,
            BaseSide.left,
          ),
          _buildDragToExpandView(
            _dragToExpandControllerTop,
            BaseSide.top,
          ),
          _buildDragToExpandView(
            _dragToExpandControllerRight,
            BaseSide.right,
          ),
          _buildDragToExpandView(
            _dragToExpandControllerBottom,
            BaseSide.bottom,
          ),
        ],
      ),
    );
  }

  Widget _buildDragToExpandView(
      DragToExpandController dragToExpandController, BaseSide baseSide) {
    return DragToExpand(
      controller: dragToExpandController,
      minSize: 0,
      maxSize: MediaQuery.of(context).size.height * 0.2,
      baseSide: baseSide,
      toggleOnTap: true,
      draggable: Center(
        child: Container(
          color: Colors.red,
          padding: EdgeInsets.all(DimenConstants.marginPaddingMedium),
          child: Text(
            "Drag to open",
            style: TextStyle(
                fontSize: 18, color: Colors.white, fontWeight: FontWeight.w400),
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
                fontSize: 18, color: Colors.white, fontWeight: FontWeight.w400),
          ),
        ),
      ),
      child: Container(color: Colors.yellow),
      clipOverflow: true,
      animationDuration: 500,
    );
  }
}
