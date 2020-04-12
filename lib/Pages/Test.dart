import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:test_flutter/Store/counter.dart';
import 'package:test_flutter/Store/test.dart' as t;

class Test extends StatelessWidget {
  // Test(this.store);
  // Counter store;
  Future<void> sql() async {
    print("sql");
    await Future.delayed(Duration(seconds: 1), () {
      print("sql1");
    });
    // Delete the database
    await deleteDatabase("demo.db");
    await Future.delayed(Duration(seconds: 1), () {
      print("sql2");
    });
    // open the database
    Database database = await openDatabase("demo.db", version: 1,
        onCreate: (Database db, int version) async {
      // When creating the db, create the table
      await db.execute(
          'CREATE TABLE Test (id INTEGER PRIMARY KEY, name TEXT, value INTEGER, num REAL)');
    });
    
    print(database);
  }

  Future<void> test_async() async {
    await Future.delayed(Duration(seconds: 1), () {
      print("test_async");
    });
  }
  @override
  Widget build(BuildContext context) {
    test_async();
    sql();
    final store = Provider.of<Counter>(context);
    final test = Provider.of<t.Test>(context);
    return Observer(
      builder: (_) => Scaffold(
        resizeToAvoidBottomPadding: false,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'You have pushed the button this many times222:',
              ),
              Text(
                '${store.value}1111${test.value}',
                style: Theme.of(context).textTheme.headline4,
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            store.increment();
            test.increment();
          },
          tooltip: 'Increment',
          child: Icon(Icons.add),
        ),
      ),
    );
  }
  
}