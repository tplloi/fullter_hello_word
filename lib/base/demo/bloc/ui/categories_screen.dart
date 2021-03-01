import 'package:flutter/material.dart';
import 'package:hello_word/base/util/ui_utils.dart';

import '../ShowChuckyJoke.dart';
import '../block/category_bloc.dart';
import '../model/categories.dart';
import '../service/response.dart';
import 'error_widget.dart';
import 'loading_widget.dart';

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
        () => Navigator.pop(context),
      ),
      backgroundColor: Colors.black,
      body: RefreshIndicator(
        onRefresh: () => _categoriesBloc.fetchCategories(),
        child: StreamBuilder<Response<Categories>>(
          stream: _categoriesBloc.categoriesStream,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              switch (snapshot.data.status) {
                case Status.LOADING:
                  return LoadingWidget(loadingMessage: snapshot.data.message);
                  break;
                case Status.COMPLETED:
                  return CategoryList(categoryList: snapshot.data.data);
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

class CategoryList extends StatelessWidget {
  final Categories categoryList;

  const CategoryList({Key key, this.categoryList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Color(0xFF202020),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 0.0,
                vertical: 1.0,
              ),
              child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) =>
                            ShowChuckyJoke(categoryList.categories[index])));
                  },
                  child: SizedBox(
                    height: 65,
                    child: Container(
                      color: Color(0xFF333333),
                      alignment: Alignment.center,
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(4, 0, 0, 0),
                        child: Text(
                          categoryList.categories[index],
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w100,
                              fontFamily: 'Roboto'),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                  )));
        },
        itemCount: categoryList.categories.length,
        shrinkWrap: true,
        physics: ClampingScrollPhysics(),
      ),
    );
  }
}
