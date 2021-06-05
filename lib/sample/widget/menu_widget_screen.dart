import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/lib/common/const/DimenConstants.dart';
import 'package:hello_word/lib/util/UIUtils.dart';
import 'package:hello_word/sample/widget/chart/ChartScreen.dart';
import 'package:hello_word/sample/widget/interactive_viewer/using_interactive_viewer_screen.dart';
import 'package:hello_word/sample/widget/md2_tab_indicator/md2_tab_indicator_screen.dart';
import 'package:hello_word/sample/widget/menu_horizontal_data_table/menu_horizontal_data_table_screen.dart';
import 'package:hello_word/sample/widget/tab_page_selector/tab_page_selector_sreen.dart';

import 'appbar/SliverAppBarScreen.dart';
import 'bottomBar/MenuBottomBarScreen.dart';
import 'bottomSheet/BottomSheetScreen.dart';
import 'button/MenuButtonScreen.dart';
import 'card/CardScreen.dart';
import 'checkBox/CheckBoxScreen.dart';
import 'checkBox/RadioButtonScreen.dart';
import 'checkBox/RadioButtonScreen2.dart';
import 'cupertino/MenuCupertinoScreen.dart';
import 'dataTable/DataTableScreen.dart';
import 'dialog/DialogScreen.dart';
import 'drawer/MenuDrawerScreen.dart';
import 'easyLoading/EasyLoadingScreen.dart';
import 'editText/MenuEditTextScreen.dart';
import 'expanded/expanded_screen.dart';
import 'expansion/menu_expansion_screen.dart';
import 'gesture/gesture_screen.dart';
import 'grid/menu_grid_screen.dart';
import 'inkwell/inkwell_screen.dart';
import 'layout/menu_layout_screen.dart';
import 'list/menu_list_screen.dart';
import 'menuImage/menu_image_screen.dart';
import 'picker/day_picker_screen.dart';
import 'progress/menu_progress_screen.dart';
import 'shimmer/shimmer_screen.dart';
import 'slider/menu_slider_screen.dart';
import 'stack/stack_screen.dart';
import 'state/stateful_widget_demo_screen.dart';
import 'state/stateless_widget_demo_screen.dart';
import 'stepper/stepper_screen.dart';
import 'switch/switch_screen.dart';
import 'table/table_screen.dart';
import 'text/text_animated_text_kit_view.dart';
import 'text/text_screen.dart';
import 'tooltip/tooltip_screen.dart';
import 'webview/web_view_screen.dart';

class MenuWidgetScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "MenuWidgetScreen",
        () {
          Get.back();
        },
        null,
      ),
      body: ListView(
        padding: EdgeInsets.all(DimenConstants.marginPaddingMedium),
        physics: BouncingScrollPhysics(),
        children: [
          UIUtils.getButton(
            "SliverAppBarScreen",
            () {
              Get.to(SliverAppBarScreen());
            },
          ),
          UIUtils.getButton(
            "MenuBottomBarScreen",
            () {
              Get.to(MenuBottomBarScreen());
            },
          ),
          UIUtils.getButton(
            "BottomSheetScreen",
            () {
              Get.to(BottomSheetScreen());
            },
          ),
          UIUtils.getButton(
            "MenuButtonScreen",
            () {
              Get.to(MenuButtonScreen());
            },
          ),
          UIUtils.getButton(
            "CardScreen",
            () {
              Get.to(CardScreen());
            },
          ),
          UIUtils.getButton(
            "ChartScreen",
            () {
              Get.to(ChartScreen());
            },
          ),
          UIUtils.getButton(
            "CheckBoxScreen",
            () {
              Get.to(CheckBoxScreen());
            },
          ),
          UIUtils.getButton(
            "RadioButtonScreen",
            () {
              Get.to(RadioButtonScreen());
            },
          ),
          UIUtils.getButton(
            "RadioButtonScreen2",
            () {
              Get.to(RadioButtonScreen2());
            },
          ),
          UIUtils.getButton(
            "MenuCupertinoScreen",
            () {
              Get.to(MenuCupertinoScreen());
            },
          ),
          UIUtils.getButton(
            "DataTableScreen",
            () {
              Get.to(DataTableScreen());
            },
          ),
          UIUtils.getButton(
            "DialogScreen",
            () {
              Get.to(DialogScreen());
            },
          ),
          UIUtils.getButton(
            "MenuDrawerScreen",
            () {
              Get.to(MenuDrawerScreen());
            },
          ),
          UIUtils.getButton(
            "EasyLoadingScreen",
            () {
              Get.to(EasyLoadingScreen());
            },
          ),
          UIUtils.getButton(
            "MenuEditTextScreen",
            () {
              Get.to(MenuEditTextScreen());
            },
          ),
          UIUtils.getButton(
            "ExpandedScreen",
            () {
              Get.to(ExpandedScreen());
            },
          ),
          UIUtils.getButton(
            "MenuExpansionScreen",
            () {
              Get.to(MenuExpansionScreen());
            },
          ),
          UIUtils.getButton(
            "GestureScreen",
            () {
              Get.to(GestureScreen());
            },
          ),
          UIUtils.getButton(
            "MenuGridScreen",
            () {
              Get.to(MenuGridScreen());
            },
          ),
          UIUtils.getButton(
            "InkwellScreen",
            () {
              Get.to(InkwellScreen());
            },
          ),
          UIUtils.getButton(
            "UsingInteractiveViewerScreen",
            () {
              Get.to(UsingInteractiveViewerScreen());
            },
          ),
          UIUtils.getButton(
            "MenuLayoutScreen",
            () {
              Get.to(MenuLayoutScreen());
            },
          ),
          UIUtils.getButton(
            "MenuListScreen",
            () {
              Get.to(MenuListScreen());
            },
          ),
          UIUtils.getButton(
            "MD2TabIndicatorScreen",
            () {
              Get.to(MD2TabIndicatorScreen());
            },
          ),
          UIUtils.getButton(
            "MenuHorizontalDataTableScreen",
            () {
              Get.to(MenuHorizontalDataTableScreen());
            },
          ),
          UIUtils.getButton(
            "MenuImageScreen",
            () {
              Get.to(MenuImageScreen());
            },
          ),
          UIUtils.getButton(
            "DayPickerScreen",
            () {
              Get.to(DayPickerScreen());
            },
          ),
          UIUtils.getButton(
            "MenuProgressScreen",
            () {
              Get.to(MenuProgressScreen());
            },
          ),
          UIUtils.getButton(
            "ShimmerScreen",
            () {
              Get.to(ShimmerScreen());
            },
          ),
          UIUtils.getButton(
            "MenuSliderScreen",
            () {
              Get.to(MenuSliderScreen());
            },
          ),
          UIUtils.getButton(
            "StackScreen",
            () {
              Get.to(StackScreen());
            },
          ),
          UIUtils.getButton(
            "StatelessWidgetDemoScreen",
            () {
              Get.to(StatelessWidgetDemoScreen());
            },
          ),
          UIUtils.getButton(
            "StatefulWidgetDemoScreen",
            () {
              Get.to(StatefulWidgetDemoScreen());
            },
          ),
          UIUtils.getButton(
            "StepperScreen",
            () {
              Get.to(StepperScreen());
            },
          ),
          UIUtils.getButton(
            "SwitchScreen",
            () {
              Get.to(SwitchScreen());
            },
          ),
          UIUtils.getButton(
            "TabPageSelectorScreen",
            () {
              Get.to(TabPageSelectorScreen());
            },
          ),
          UIUtils.getButton(
            "TableScreen",
            () {
              Get.to(TableScreen());
            },
          ),
          UIUtils.getButton(
            "TextAnimatedTextKitScreen",
            () {
              Get.to(TextAnimatedTextKitScreen());
            },
          ),
          UIUtils.getButton(
            "TextScreen",
            () {
              Get.to(TextScreen());
            },
          ),
          UIUtils.getButton(
            "TooltipScreen",
            () {
              Get.to(TooltipScreen());
            },
          ),
          UIUtils.getButton(
            "WebViewScreen",
            () {
              Get.to(WebViewScreen());
            },
          ),
        ],
      ),
    );
  }
}
