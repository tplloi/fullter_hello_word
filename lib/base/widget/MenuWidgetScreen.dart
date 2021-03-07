import 'package:flutter/material.dart';
import 'package:hello_word/base/util/UIUtils.dart';

import 'appbar/SliverAppBarScreen.dart';
import 'bottom_bar/MenuBottomBarScreen.dart';
import 'bottom_sheet/BottomSheetScreen.dart';
import 'button/MenuButtonScreen.dart';
import 'calendar/CalendarScreen.dart';
import 'card/CardScreen.dart';
import 'chart/ChartScreen.dart';
import 'checkBox/CheckBoxScreen.dart';
import 'checkBox/RadioButtonScreen.dart';
import 'checkBox/RadioButtonScreen2.dart';
import 'cupertino/MenuCupertinoScreen.dart';
import 'dataTable/DataTableScreen.dart';
import 'dialog/DialogScreen.dart';
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
          Navigator.pop(context),
        },
        null,
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          UIUtils().getButton(
            "SliverAppBarScreen",
            () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SliverAppBarScreen()),
              )
            },
          ),
          UIUtils().getButton(
            "MenuBottomBarScreen",
            () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MenuBottomBarScreen()),
              )
            },
          ),
          UIUtils().getButton(
            "BottomSheetScreen",
            () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => BottomSheetScreen()),
              )
            },
          ),
          UIUtils().getButton(
            "MenuButtonScreen",
            () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MenuButtonScreen()),
              )
            },
          ),
          UIUtils().getButton(
            "CalendarScreen",
            () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CalendarScreen()),
              )
            },
          ),
          UIUtils().getButton(
            "CardScreen",
            () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CardScreen()),
              )
            },
          ),
          UIUtils().getButton(
            "ChartScreen",
            () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ChartScreen()),
              )
            },
          ),
          UIUtils().getButton(
            "CheckBoxScreen",
            () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CheckBoxScreen()),
              )
            },
          ),
          UIUtils().getButton(
            "RadioButtonScreen",
            () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => RadioButtonScreen()),
              )
            },
          ),
          UIUtils().getButton(
            "RadioButtonScreen2",
            () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => RadioButtonScreen2()),
              )
            },
          ),
          UIUtils().getButton(
            "MenuCupertinoScreen",
            () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MenuCupertinoScreen()),
              )
            },
          ),
          UIUtils().getButton(
            "DataTableScreen",
            () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DataTableScreen()),
              )
            },
          ),
          UIUtils().getButton(
            "DialogScreen",
            () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DialogScreen()),
              )
            },
          ),
          UIUtils().getButton(
            "MenuDrawerScreen",
            () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MenuDrawerScreen()),
              )
            },
          ),
          UIUtils().getButton(
            "EasyLoadingScreen",
                () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => EasyLoadingScreen()),
              )
            },
          ),
          UIUtils().getButton(
            "MenuEditTextScreen",
            () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MenuEditTextScreen()),
              )
            },
          ),
          UIUtils().getButton(
            "ExpandedScreen",
            () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ExpandedScreen()),
              )
            },
          ),
          UIUtils().getButton(
            "MenuExpansionScreen",
            () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MenuExpansionScreen()),
              )
            },
          ),
          UIUtils().getButton(
            "GestureScreen",
            () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => GestureScreen()),
              )
            },
          ),
          UIUtils().getButton(
            "MenuGridScreen",
            () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MenuGridScreen()),
              )
            },
          ),
          UIUtils().getButton(
            "MenuImageScreen",
            () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MenuImageScreen()),
              )
            },
          ),
          UIUtils().getButton(
            "InkwellScreen",
            () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => InkwellScreen()),
              )
            },
          ),
          UIUtils().getButton(
            "UsingInteractiveViewerScreen",
            () => {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => UsingInteractiveViewerScreen()),
              )
            },
          ),
          UIUtils().getButton(
            "MenuLayoutScreen",
            () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MenuLayoutScreen()),
              )
            },
          ),
          UIUtils().getButton(
            "MenuListScreen",
            () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MenuListScreen()),
              )
            },
          ),
          UIUtils().getButton(
            "DayPickerScreen",
            () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DayPickerScreen()),
              )
            },
          ),
          UIUtils().getButton(
            "MenuProgressScreen",
            () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MenuProgressScreen()),
              )
            },
          ),
          UIUtils().getButton(
            "ShimmerScreen",
                () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ShimmerScreen()),
              )
            },
          ),
          UIUtils().getButton(
            "MenuSliderScreen",
            () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MenuSliderScreen()),
              )
            },
          ),
          UIUtils().getButton(
            "StackScreen",
            () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => StackScreen()),
              )
            },
          ),
          UIUtils().getButton(
            "StatelessWidgetDemoScreen",
            () => {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => StatelessWidgetDemoScreen()),
              )
            },
          ),
          UIUtils().getButton(
            "StatefulWidgetDemoScreen",
            () => {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => StatefulWidgetDemoScreen()),
              )
            },
          ),
          UIUtils().getButton(
            "StepperScreen",
            () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => StepperScreen()),
              )
            },
          ),
          UIUtils().getButton(
            "SwiperScreen",
            () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SwiperScreen()),
              )
            },
          ),
          UIUtils().getButton(
            "SwitchScreen",
            () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SwitchScreen()),
              )
            },
          ),
          UIUtils().getButton(
            "TabPageSelectorScreen",
            () => {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => TabPageSelectorScreen()),
              )
            },
          ),
          UIUtils().getButton(
            "TableScreen",
            () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TableScreen()),
              )
            },
          ),
          UIUtils().getButton(
            "TextAnimatedTextKitScreen",
                () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TextAnimatedTextKitScreen()),
              )
            },
          ),
          UIUtils().getButton(
            "TextScreen",
            () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TextScreen()),
              )
            },
          ),
          UIUtils().getButton(
            "TooltipScreen",
            () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TooltipScreen()),
              )
            },
          ),
          UIUtils().getButton(
            "WebViewScreen",
            () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => WebViewScreen()),
              )
            },
          ),
        ],
      ),
    );
  }
}
