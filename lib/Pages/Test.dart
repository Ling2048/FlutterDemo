import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:test_flutter/Store/counter.dart';
import 'package:test_flutter/Store/test.dart' as t;

class Test extends StatelessWidget {
  // Test(this.store);
  // Counter store;
  @override
  Widget build(BuildContext context) {
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
                'You have pushed the button this many times:',
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