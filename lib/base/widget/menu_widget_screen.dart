import 'package:flutter/material.dart';
import 'package:hello_word/base/util/UIUtils.dart';
import 'package:hello_word/base/widget/grid/menu_grid_screen.dart';
import 'package:hello_word/base/widget/image/MenuImageScreen.dart';
import 'package:hello_word/base/widget/layout/MenuLayoutScreen.dart';
import 'package:hello_word/base/widget/list/MenuListScreen.dart';
import 'package:hello_word/base/widget/picker/DayPickerScreen.dart';
import 'package:hello_word/base/widget/slider/menu_slider_screen.dart';
import 'package:hello_word/base/widget/stepper/stepper.dart';
import 'package:hello_word/base/widget/switch/switch_screen.dart';
import 'package:hello_word/base/widget/tab_page_selector/tab_page_selector_screen.dart';
import 'package:hello_word/base/widget/text/text_screen.dart';

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
import 'editText/MenuEditTextScreen.dart';
import 'expanded/ExpandedScreen.dart';
import 'expansion/MenuExpansionScreen.dart';
import 'gesture/GestureScreen.dart';
import 'inkwell/InkwellScreen.dart';
import 'interactiveViewer/UsingInteractiveViewerScreen.dart';
import 'progress/menu_progress_screen.dart';
import 'stack/stack_screen.dart';
import 'state/stateless_widget.dart';
import 'state/statelful_widget.dart';
import 'swiper/swiper_screen.dart';
import 'table/table_screen.dart';
import 'tooltip/tooltip_screen.dart';

class MenuWidgetScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils().getAppBar(
          "MenuWidgetScreen",
          () => {
                Navigator.pop(context),
              }),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            UIUtils().getRaisedButton(
              "SliverAppBarScreen",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SliverAppBarScreen()),
                )
              },
            ),
            UIUtils().getRaisedButton(
              "MenuBottomBarScreen",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MenuBottomBarScreen()),
                )
              },
            ),
            UIUtils().getRaisedButton(
              "BottomSheetScreen",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BottomSheetScreen()),
                )
              },
            ),
            UIUtils().getRaisedButton(
              "MenuButtonScreen",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MenuButtonScreen()),
                )
              },
            ),
            UIUtils().getRaisedButton(
              "CalendarScreen",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CalendarScreen()),
                )
              },
            ),
            UIUtils().getRaisedButton(
              "CardScreen",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CardScreen()),
                )
              },
            ),
            UIUtils().getRaisedButton(
              "ChartScreen",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ChartScreen()),
                )
              },
            ),
            UIUtils().getRaisedButton(
              "CheckBoxScreen",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CheckBoxScreen()),
                )
              },
            ),
            UIUtils().getRaisedButton(
              "RadioButtonScreen",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RadioButtonScreen()),
                )
              },
            ),
            UIUtils().getRaisedButton(
              "RadioButtonScreen2",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RadioButtonScreen2()),
                )
              },
            ),
            UIUtils().getRaisedButton(
              "MenuCupertinoScreen",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MenuCupertinoScreen()),
                )
              },
            ),
            UIUtils().getRaisedButton(
              "DataTableScreen",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DataTableScreen()),
                )
              },
            ),
            UIUtils().getRaisedButton(
              "DialogScreen",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DialogScreen()),
                )
              },
            ),
            UIUtils().getRaisedButton(
              "MenuDrawerScreen",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MenuDrawerScreen()),
                )
              },
            ),
            UIUtils().getRaisedButton(
              "MenuEditTextScreen",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MenuEditTextScreen()),
                )
              },
            ),
            UIUtils().getRaisedButton(
              "ExpandedScreen",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ExpandedScreen()),
                )
              },
            ),
            UIUtils().getRaisedButton(
              "MenuExpansionScreen",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MenuExpansionScreen()),
                )
              },
            ),
            UIUtils().getRaisedButton(
              "GestureScreen",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => GestureScreen()),
                )
              },
            ),
            UIUtils().getRaisedButton(
              "MenuGridScreen",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MenuGridScreen()),
                )
              },
            ),
            UIUtils().getRaisedButton(
              "MenuImageScreen",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MenuImageScreen()),
                )
              },
            ),
            UIUtils().getRaisedButton(
              "InkwellScreen",
                  () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => InkwellScreen()),
                )
              },
            ),
            UIUtils().getRaisedButton(
              "UsingInteractiveViewerScreen",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => UsingInteractiveViewerScreen()),
                )
              },
            ),
            UIUtils().getRaisedButton(
              "MenuLayoutScreen",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MenuLayoutScreen()),
                )
              },
            ),
            UIUtils().getRaisedButton(
              "MenuListScreen",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MenuListScreen()),
                )
              },
            ),
            UIUtils().getRaisedButton(
              "DayPickerScreen",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DayPickerScreen()),
                )
              },
            ),
            UIUtils().getRaisedButton(
              "MenuProgressScreen",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MenuProgressScreen()),
                )
              },
            ),
            UIUtils().getRaisedButton(
              "MenuSliderScreen",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MenuSliderScreen()),
                )
              },
            ),
            UIUtils().getRaisedButton(
              "StackScreen",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => StackScreen()),
                )
              },
            ),
            UIUtils().getRaisedButton(
              "StatelessWidgetDemoScreen",
                  () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => StatelessWidgetDemoScreen()),
                )
              },
            ),
            UIUtils().getRaisedButton(
              "StatefulWidgetDemoScreen",
                  () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => StatefulWidgetDemoScreen()),
                )
              },
            ),
            UIUtils().getRaisedButton(
              "StepperScreen",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => StepperScreen()),
                )
              },
            ),
            UIUtils().getRaisedButton(
              "SwiperScreen",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SwiperScreen()),
                )
              },
            ),
            UIUtils().getRaisedButton(
              "SwitchScreen",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SwitchScreen()),
                )
              },
            ),
            UIUtils().getRaisedButton(
              "TabPageSelectorScreen",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => TabPageSelectorScreen()),
                )
              },
            ),
            UIUtils().getRaisedButton(
              "TableScreen",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TableScreen()),
                )
              },
            ),
            UIUtils().getRaisedButton(
              "TextScreen",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TextScreen()),
                )
              },
            ),
            UIUtils().getRaisedButton(
              "TooltipScreen",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TooltipScreen()),
                )
              },
            ),
          ],
        ),
      ),
    );
  }
}
