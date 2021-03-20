import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/lib/util/UIUtils.dart';

class InfiniteScrollScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return InfiniteScrollState();
  }
}

class InfiniteScrollState extends State<InfiniteScrollScreen> {
  List listData = [];
  bool isLoading = false;
  int pageCount = 1;
  ScrollController _scrollController;

  @override
  void initState() {
    super.initState();

    //LOADING FIRST  DATA
    addItemIntoLisT(1);

    _scrollController = new ScrollController(initialScrollOffset: 5.0)
      ..addListener(_scrollListener);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils.getAppBar(
        "InfiniteScrollScreen",
        () => Get.back(),
        null,
      ),
      body: GridView.count(
        controller: _scrollController,
        scrollDirection: Axis.vertical,
        crossAxisCount: 2,
        mainAxisSpacing: 15.0,
        physics: const AlwaysScrollableScrollPhysics(),
        children: listData.map((value) {
          return InkWell(
            child: Container(
              alignment: Alignment.center,
              height: MediaQuery.of(context).size.height * 0.2,
              margin: EdgeInsets.only(left: 10.0, right: 10.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
              ),
              child: Text("Item $value"),
            ),
            onTap: () {
              print("onTap");
              listData.remove(value);
              //do sth better
              setState(() {});
            },
          );
        }).toList(),
      ),
    );
  }

  //// ADDING THE SCROLL
  _scrollListener() {
    if (_scrollController.offset >=
            _scrollController.position.maxScrollExtent &&
        !_scrollController.position.outOfRange) {
      setState(() {
        print("comes to bottom $isLoading");
        isLoading = true;

        if (isLoading) {
          print("RUNNING LOAD MORE");

          pageCount = pageCount + 1;
          addItemIntoLisT(pageCount);
        }
      });
    }
  }

  ////ADDING DATA INTO ARRAY LIST
  void addItemIntoLisT(var pageCount) {
    for (int i = (pageCount * 10) - 10; i < pageCount * 10; i++) {
      listData.add(i);
      isLoading = false;
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}
