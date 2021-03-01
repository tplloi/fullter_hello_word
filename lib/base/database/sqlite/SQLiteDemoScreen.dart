import 'dart:math' as math;

import 'package:flutter/material.dart';

import 'model/ClientModel.dart';
import 'bloc/ClientsBloc.dart';

//https://medium.com/flutter-community/using-sqlite-in-flutter-187c1a82e8b
class SQLiteDemoScreen extends StatefulWidget {
  @override
  _SQLiteDemoScreenState createState() => _SQLiteDemoScreenState();
}

class _SQLiteDemoScreenState extends State<SQLiteDemoScreen> {
  // data for testing
  List<Client> testClients = [
    Client(firstName: "BMW", lastName: "S1000RR", blocked: false),
    Client(firstName: "Suzuki", lastName: "GSX1000R", blocked: true),
    Client(firstName: "Yamaha", lastName: "R1M", blocked: false),
    Client(firstName: "Honda", lastName: "CBR1000RR", blocked: true),
    Client(firstName: "Kawasaki", lastName: "H2R", blocked: true),
  ];

  final bloc = ClientsBloc();

  @override
  void dispose() {
    bloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Flutter SQLite")),
      body: StreamBuilder<List<Client>>(
        stream: bloc.clients,
        builder: (BuildContext context, AsyncSnapshot<List<Client>> snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data.length,
              itemBuilder: (BuildContext context, int index) {
                Client item = snapshot.data[index];
                return Dismissible(
                  key: UniqueKey(),
                  background: Container(color: Colors.red),
                  onDismissed: (direction) {
                    bloc.delete(item.id);
                  },
                  child: ListTile(
                    title: Text(item.lastName),
                    leading: Text(item.id.toString()),
                    trailing: Checkbox(
                      onChanged: (bool value) {
                        bloc.blockUnblock(item);
                      },
                      value: item.blocked,
                    ),
                  ),
                );
              },
            );
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () async {
          Client rnd = testClients[math.Random().nextInt(testClients.length)];
          bloc.add(rnd);
        },
      ),
    );
  }
}
