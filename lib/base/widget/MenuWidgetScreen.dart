import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/base/util/UIUtils.dart';

import 'appbar/SliverAppBarScreen.dart';
import 'bottomBar/MenuBottomBarScreen.dart';
import 'bottomSheet/BottomSheetScreen.dart';
import 'button/MenuButtonScreen.dart';
import 'calendar/CalendarScreen.dart';
import 'card/CardScreen.dart';
import 'checkBox/CheckBoxScreen.dart';
import 'checkBox/RadioButtonScreen.dart';
import 'checkBox/RadioButtonScreen2.dart';
import 'cupertino/MenuCupertinoScreen.dart';
import 'dataTable/DataTableScreen.dart';
import 'dialog/DialogScreen.dart';
import 'dragToExpand/DragToExpandView.dart';
import 'drawer/MenuDrawerScreen.dart';
import 'easyLoading/EasyLoadingScreen.dart';
import 'editText/MenuEditTextScreen.dart';
import 'expanded/ExpandedScreen.dart';
import 'expansion/MenuExpansionScreen.dart';
import 'gesture/GestureScreen.dart';
import 'grid/menu_grid_screen.dart';
import 'image/MenuImageScreen.dart';
import 'inkwell/InkwellScreen.dart';
import 'interactiveViewer/UsingInteractiveViewerScreen.dart';
import 'layout/MenuLayoutScreen.dart';
import 'list/MenuListScreen.dart';
import 'md2TabIndicator/Md2TabIndicatorScreen.dart';
import 'menuHorizontalDataTable/MenuHorizontalDataTableScreen.dart';
import 'picker/DayPickerScreen.dart';
import 'progress/MenuProgressScreen.dart';
import 'shimmer/ShimmerScreen.dart';
import 'slider/MenuSliderScreen.dart';
import 'stack/StackScreen.dart';
import 'state/StatefulWidgetDemoScreen.dart';
import 'state/StatelessWidgetDemoScreen.dart';
import 'stepper/StepperScreen.dart';
import 'swiper/SwiperScreen.dart';
import 'switch/SwitchScreen.dart';
import 'tabPageSelector/TabPageSelectorScreen.dart';
import 'table/TableScreen.dart';
import 'text/TextAnimatedTextKit.dart';
import 'text/TextScreen.dart';
import 'tooltip/TooltipScreen.dart';
import 'webview/WebViewScreen.dart';

class MenuWidgetScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils().getAppBar(
        "MenuWidgetScreen",
        () => {
          Get.back(),
        },
        null,
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          UIUtils().getButton(
            "SliverAppBarScreen",
            () => {
              Get.to(SliverAppBarScreen()),
            },
          ),
          UIUtils().getButton(
            "MenuBottomBarScreen",
            () => {
              Get.to(MenuBottomBarScreen()),
            },
          ),
          UIUtils().getButton(
            "BottomSheetScreen",
            () => {
              Get.to(BottomSheetScreen()),
            },
          ),
          UIUtils().getButton(
            "MenuButtonScreen",
            () => {
              Get.to(MenuButtonScreen()),
            },
          ),
          UIUtils().getButton(
            "CalendarScreen",
            () => {
              Get.to(CalendarScreen()),
            },
          ),
          UIUtils().getButton(
            "CardScreen",
            () => {
              Get.to(CardScreen()),
            },
          ),
          UIUtils().getButton(
            "ChartScreen",
            () => {
              Get.to(CardScreen()),
            },
          ),
          UIUtils().getButton(
            "CheckBoxScreen",
            () => {
              Get.to(CheckBoxScreen()),
            },
          ),
          UIUtils().getButton(
            "RadioButtonScreen",
            () => {
              Get.to(RadioButtonScreen()),
            },
          ),
          UIUtils().getButton(
            "RadioButtonScreen2",
            () => {
              Get.to(RadioButtonScreen2()),
            },
          ),
          UIUtils().getButton(
            "MenuCupertinoScreen",
            () => {
              Get.to(MenuCupertinoScreen()),
            },
          ),
          UIUtils().getButton(
            "DataTableScreen",
            () => {
              Get.to(DataTableScreen()),
            },
          ),
          UIUtils().getButton(
            "DialogScreen",
            () => {
              Get.to(DialogScreen()),
            },
          ),
          UIUtils().getButton(
            "DragToExpandView",
            () => {
              Get.to(DragToExpandView()),
            },
          ),
          UIUtils().getButton(
            "MenuDrawerScreen",
            () => {
              Get.to(MenuDrawerScreen()),
            },
          ),
          UIUtils().getButton(
            "EasyLoadingScreen",
            () => {
              Get.to(EasyLoadingScreen()),
            },
          ),
          UIUtils().getButton(
            "MenuEditTextScreen",
            () => {
              Get.to(MenuEditTextScreen()),
            },
          ),
          UIUtils().getButton(
            "ExpandedScreen",
            () => {
              Get.to(ExpandedScreen()),
            },
          ),
          UIUtils().getButton(
            "MenuExpansionScreen",
            () => {
              Get.to(MenuExpansionScreen()),
            },
          ),
          UIUtils().getButton(
            "GestureScreen",
            () => {
              Get.to(GestureScreen()),
            },
          ),
          UIUtils().getButton(
            "MenuGridScreen",
            () => {
              Get.to(MenuGridScreen()),
            },
          ),
          UIUtils().getButton(
            "MenuImageScreen",
            () => {
              Get.to(MenuImageScreen()),
            },
          ),
          UIUtils().getButton(
            "InkwellScreen",
            () => {
              Get.to(InkwellScreen()),
            },
          ),
          UIUtils().getButton(
            "UsingInteractiveViewerScreen",
            () => {
              Get.to(UsingInteractiveViewerScreen()),
            },
          ),
          UIUtils().getButton(
            "MenuLayoutScreen",
            () => {
              Get.to(MenuLayoutScreen()),
            },
          ),
          UIUtils().getButton(
            "MenuListScreen",
            () => {
              Get.to(MenuListScreen()),
            },
          ),
          UIUtils().getButton(
            "MD2TabIndicatorScreen",
            () => {
              Get.to(MD2TabIndicatorScreen()),
            },
          ),
          UIUtils().getButton(
            "MenuHorizontalDataTableScreen",
            () => {
              Get.to(MenuHorizontalDataTableScreen()),
            },
          ),
          UIUtils().getButton(
            "DayPickerScreen",
            () => {
              Get.to(DayPickerScreen()),
            },
          ),
          UIUtils().getButton(
            "MenuProgressScreen",
            () => {
              Get.to(MenuProgressScreen()),
            },
          ),
          UIUtils().getButton(
            "ShimmerScreen",
            () => {
              Get.to(ShimmerScreen()),
            },
          ),
          UIUtils().getButton(
            "MenuSliderScreen",
            () => {
              Get.to(MenuSliderScreen()),
            },
          ),
          UIUtils().getButton(
            "StackScreen",
            () => {
              Get.to(StackScreen()),
            },
          ),
          UIUtils().getButton(
            "StatelessWidgetDemoScreen",
            () => {
              Get.to(StatelessWidgetDemoScreen()),
            },
          ),
          UIUtils().getButton(
            "StatefulWidgetDemoScreen",
            () => {
              Get.to(StatefulWidgetDemoScreen()),
            },
          ),
          UIUtils().getButton(
            "StepperScreen",
            () => {
              Get.to(StepperScreen()),
            },
          ),
          UIUtils().getButton(
            "SwiperScreen",
            () => {
              Get.to(SwiperScreen()),
            },
          ),
          UIUtils().getButton(
            "SwitchScreen",
            () => {
              Get.to(SwitchScreen()),
            },
          ),
          UIUtils().getButton(
            "TabPageSelectorScreen",
            () => {
              Get.to(TabPageSelectorScreen()),
            },
          ),
          UIUtils().getButton(
            "TableScreen",
            () => {
              Get.to(TableScreen()),
            },
          ),
          UIUtils().getButton(
            "TextAnimatedTextKitScreen",
            () => {
              Get.to(TextAnimatedTextKitScreen()),
            },
          ),
          UIUtils().getButton(
            "TextScreen",
            () => {
              Get.to(TextScreen()),
            },
          ),
          UIUtils().getButton(
            "TooltipScreen",
            () => {
              Get.to(TooltipScreen()),
            },
          ),
          UIUtils().getButton(
            "WebViewScreen",
            () => {
              Get.to(WebViewScreen()),
            },
          ),
        ],
      ),
    );
  }
}
