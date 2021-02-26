import 'package:flutter/material.dart';
import 'package:hello_word/base/util/ui_utils.dart';
import 'package:hello_word/base/widget/grid/menu_grid_screen.dart';
import 'package:hello_word/base/widget/image/menu_image_screen.dart';
import 'package:hello_word/base/widget/interactive_viewer/using_interactive_viewer.dart';
import 'package:hello_word/base/widget/layout/menu_layout_screen.dart';
import 'package:hello_word/base/widget/list/menu_list_screen.dart';
import 'package:hello_word/base/widget/picker/day_picker_screen.dart';
import 'package:hello_word/base/widget/slider/menu_slider_screen.dart';
import 'package:hello_word/base/widget/stepper/stepper.dart';
import 'package:hello_word/base/widget/switch/switch_screen.dart';
import 'package:hello_word/base/widget/tab_page_selector/tab_page_selector_screen.dart';
import 'package:hello_word/base/widget/text/text_screen.dart';

import 'appbar/sliver_app_bar.dart';
import 'bottom_bar/menu_bottom_bar_screen.dart';
import 'bottom_sheet/bottom_sheet_screen.dart';
import 'button/menu_button_screen.dart';
import 'calendar/calendar_screen.dart';
import 'card/card_screen.dart';
import 'chart/chart_screen.dart';
import 'check_box/check_box_screen.dart';
import 'check_box/radio_button_screen.dart';
import 'check_box/radio_button_screen_2.dart';
import 'cupertino/menu_cupertino_screen.dart';
import 'data_table/data_table_screen.dart';
import 'dialog/dialog_screen.dart';
import 'drawer/menu_drawer_screen.dart';
import 'edit_text/menu_edit_text_screen.dart';
import 'expanded/expanded_screen.dart';
import 'expansion/menu_expansion_screen.dart';
import 'gesture/gestures_screen.dart';
import 'progress/menu_progress_screen.dart';
import 'stack/stack_screen.dart';
import 'swiper/swiper_screen.dart';

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
              "TextScreen",
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TextScreen()),
                )
              },
            ),
          ],
        ),
      ),
    );
  }
}
