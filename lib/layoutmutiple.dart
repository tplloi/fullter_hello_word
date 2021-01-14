import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      theme: ThemeData(
        primaryColor: Colors.black,
      ),
      home: Scaffold(
        // appBar: AppBar(
        //   title: Text('Welcome to Flutter'),
        // ),
        body: Center(
          child: MyHomePage(
            title: "MyHomePage",
          ),
        ),
        backgroundColor: Colors.white70,
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.title),
      ),
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.fromLTRB(5, 10, 15, 20),
          children: <Widget>[
            ProductBox(
              name: "Suzuki",
              description: "Japan",
              price: 1000,
              image: "iv.jpg",
            ),
            ProductBox(
              name: "Ducati",
              description: "Italia",
              price: 2000,
              image: "iv.png",
            ),
            ProductBox(
              name: "Honda",
              description: "Japan",
              price: 3000,
              image: "iv.jpg",
            ),
            ProductBox(
              name: "BMW",
              description: "Germany",
              price: 4000,
              image: "iv.png",
            ),
            ProductBox(
              name: "Ferrari",
              description: "Italia",
              price: 5000,
              image: "iv.png",
            )
          ],
        ),
      ),
    );
  }
}

class ProductBox extends StatelessWidget {
  ProductBox({Key key, this.name, this.description, this.price, this.image})
      : super(key: key);

  final String name;
  final String description;
  final int price;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      height: 150,
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image.asset(
              "assets/images/" + this.image,
            ),
            Expanded(
                child: Container(
              padding: EdgeInsets.all(5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    this.name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    this.description,
                  ),
                  Text(
                    "Price: " + this.price.toString(),
                  )
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
