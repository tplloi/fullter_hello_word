import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/base/util/UIUtils.dart';

class MD2TabIndicatorScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils().getAppBar(
        "MD2TabIndicatorScreen",
        () => {
          Get.back(),
        },
        null,
      ),
      body: IndicatorHomePage(),
    );
  }
}

class IndicatorHomePage extends StatefulWidget {
  IndicatorHomePage({Key key}) : super(key: key);

  @override
  _IndicatorHomePageState createState() => _IndicatorHomePageState();
}

class _IndicatorHomePageState extends State<IndicatorHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 17,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "MD2TabIndicatorScreen",
            style: TextStyle(color: Colors.black87),
          ),
          backgroundColor: Colors.yellow,
          bottom: TabBar(
            labelStyle: TextStyle(fontWeight: FontWeight.w700),
            indicatorSize: TabBarIndicatorSize.label,
            labelColor: Color(0xff1967d2),
            unselectedLabelColor: Color(0xff5f6368),
            isScrollable: true,
            // indicator: MD2Indicator(
            //   indicatorHeight: 3,
            //   indicatorColor: Color(0xff1967d2),
            // ),
            indicator: MD2Indicator(
              indicatorSize: MD2IndicatorSize.tiny,
              indicatorHeight: 10.0,
              indicatorColor: Colors.red,
            ),
            tabs: <Widget>[
              Tab(
                text: "Home",
              ),
              Tab(
                text: "Personal info",
              ),
              Tab(
                text: "Data & personalization",
              ),
              Tab(
                text: "Security",
              ),
              Tab(
                text: "Security",
              ),
              Tab(
                text: "Security",
              ),
              Tab(
                text: "Security",
              ),
              Tab(
                text: "Security",
              ),
              Tab(
                text: "Security",
              ),
              Tab(
                text: "Security",
              ),
              Tab(
                text: "Security",
              ),
              Tab(
                text: "Security",
              ),
              Tab(
                text: "Security",
              ),
              Tab(
                text: "Security",
              ),
              Tab(
                text: "Security",
              ),
              Tab(
                text: "Security",
              ),
              Tab(
                text: "Security",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

enum MD2IndicatorSize {
  tiny,
  normal,
  full,
}

class MD2Indicator extends Decoration {
  final double indicatorHeight;
  final Color indicatorColor;
  final MD2IndicatorSize indicatorSize;

  const MD2Indicator({
    @required this.indicatorHeight,
    @required this.indicatorColor,
    @required this.indicatorSize,
  });

  @override
  _MD2Painter createBoxPainter([VoidCallback onChanged]) {
    return new _MD2Painter(this, onChanged);
  }
}

class _MD2Painter extends BoxPainter {
  final MD2Indicator decoration;

  _MD2Painter(this.decoration, VoidCallback onChanged)
      : assert(decoration != null),
        super(onChanged);

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    assert(configuration != null);
    assert(configuration.size != null);

    Rect rect;
    if (decoration.indicatorSize == MD2IndicatorSize.full) {
      rect = Offset(offset.dx,
              (configuration.size.height - decoration.indicatorHeight ?? 3)) &
          Size(configuration.size.width, decoration.indicatorHeight ?? 3);
    } else if (decoration.indicatorSize == MD2IndicatorSize.normal) {
      rect = Offset(offset.dx + 6,
              (configuration.size.height - decoration.indicatorHeight ?? 3)) &
          Size(configuration.size.width - 12, decoration.indicatorHeight ?? 3);
    } else if (decoration.indicatorSize == MD2IndicatorSize.tiny) {
      rect = Offset(offset.dx + configuration.size.width / 2 - 8,
              (configuration.size.height - decoration.indicatorHeight ?? 3)) &
          Size(16, decoration.indicatorHeight ?? 3);
    }

    final Paint paint = Paint();
    paint.color = decoration.indicatorColor ?? Color(0xff1967d2);
    paint.style = PaintingStyle.fill;
    canvas.drawRRect(
        RRect.fromRectAndCorners(rect,
            topRight: Radius.circular(45), topLeft: Radius.circular(45)),
        paint);
  }
}
