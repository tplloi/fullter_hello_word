import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_word/base/const/Constants.dart';
import 'package:hello_word/base/util/UIUtils.dart';

import 'ChuckScreen.dart';
import '../block/CategoriesBloc.dart';
import '../model/Categories.dart';
import '../service/AppResponse.dart';
import 'ErrorRetryWidget.dart';
import 'LoadingWidget.dart';

//https://itnext.io/flutter-handling-your-network-api-calls-like-a-boss-936eef296547
class CategoriesScreen extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<CategoriesScreen> {
  CategoriesBloc _categoriesBloc;

  @override
  void initState() {
    super.initState();
    _categoriesBloc = CategoriesBloc();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIUtils().getAppBar(
        "CategoriesScreen",
        () => Get.back(),
        null,
      ),
      backgroundColor: Colors.black,
      body: RefreshIndicator(
        onRefresh: () => _categoriesBloc.fetchCategories(),
        child: StreamBuilder<AppResponse<Categories>>(
          stream: _categoriesBloc.categoriesStream,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              switch (snapshot.data.status) {
                case Status.LOADING:
                  return LoadingWidget(loadingMessage: snapshot.data.message);
                  break;
                case Status.COMPLETED:
                  return CategoriesWidget(listCategory: snapshot.data.data);
                  break;
                case Status.ERROR:
                  return ErrorRetryWidget(
                    errorMessage: snapshot.data.message,
                    onRetryPressed: () => _categoriesBloc.fetchCategories(),
                  );
                  break;
              }
            }
            return Container();
          },
        ),
      ),
    );
  }

  @override
  void dispose() {
    _categoriesBloc.dispose();
    super.dispose();
  }
}

class CategoriesWidget extends StatelessWidget {
  final Categories listCategory;

  const CategoriesWidget({Key key, this.listCategory}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.symmetric(
            horizontal: Constants.marginPaddingMedium,
            vertical: Constants.marginPaddingMedium,
          ),
          child: InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) =>
                      ChuckScreen(listCategory.categories[index]),
                ),
              );
            },
            child: SizedBox(
              height: 65,
              child: Container(
                color: Color(0xFF333333),
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(4, 0, 0, 0),
                  child: Text(
                    listCategory.categories[index],
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: Constants.txtMedium,
                        fontWeight: FontWeight.w100,
                        fontFamily: 'Roboto'),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
            ),
          ),
        );
      },
      itemCount: listCategory.categories.length,
      shrinkWrap: true,
      physics: BouncingScrollPhysics(),
    );
  }
}
