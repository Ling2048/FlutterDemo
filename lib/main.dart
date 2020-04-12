import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:test_flutter/Models/f.dart';
import 'package:test_flutter/Models/r.dart';
import 'package:test_flutter/Pages/Test.dart';
import 'package:test_flutter/Store/counter.dart';
import 'package:test_flutter/Store/test.dart' as t;
import 'package:sqflite/sqflite.dart';


void main() {
  runApp(MainApp());
  SystemChrome.setEnabledSystemUIOverlays([]);
  print("test");
  String jStr = '{"Data":{"Tem":"TEM20200313102831","BgList":[{"Id":40,"Key":"竖版健康阅读机（改）","Value":"/img/健康阅读机（改）/bj.png","Info":"竖版健康阅读机（改）","Type":9,"CreateTime":"2020-03-13T15:22:03.293"},{"Id":41,"Key":"竖版健康阅读机（改）","Value":"/img/健康阅读机/二级页面.jpg","Info":"竖版健康阅读机（改）","Type":9,"CreateTime":"2020-03-13T15:53:41.733"},{"Id":42,"Key":"竖版健康阅读机（改）","Value":"/img/健康阅读机/二级页面.jpg","Info":"竖版健康阅读机（改）","Type":9,"CreateTime":"2020-03-13T16:01:51.223"}],"LocalInfo":{"Extra":[{"typeName":"本地风采","img":"/Upload/img/按钮4.png","Id":"1","btns":[{"Id":2,"typeName":"颍泉区人民政府","img":"/Upload/img/按钮4.png","url":"http://www.360elib.com:10001/","type":5,"mainId":2},{"Id":3,"typeName":"自定义","img":"/Upload/img/按钮4.png","url":"http://192.168.101.18:3000/","type":5,"mainId":3}]}],"screensavers":{"imgs":[{"id":1,"img":"/banner/0.jpg"},{"id":2,"img":"/banner/1.jpg"},{"id":3,"img":"/banner/2.jpg"}],"time":-1},"theme":"theme1","btnicons":{"10033":"/img/健康阅读机（改）/图书馆.png","10034":"/img/健康阅读机（改）/视频馆.png","10035":"/img/健康阅读机（改）/有声馆.png","10036":"/img/健康阅读机（改）/古籍馆.png"},"banners":["https://zos.alipayobjects.com/rmsportal/AiyWuByWklrrUDlFignR.png","https://zos.alipayobjects.com/rmsportal/TekJlZRVCjLFexlOCuWn.png","https://zos.alipayobjects.com/rmsportal/IJOtIlfsYdTyaDTRVrLI.png"],"autoplaySpeed":5000,"logo":"/img/logo.png","video1":"http://www.360elib.com:9993/xsdjh.mp4"},"IsShowHelper":0,"IsShowLocalInfo":0,"EmpowerCode":"","NoticeStr":"欢迎使用全民阅读系统"},"Msg":"添加成功","ResultCode":0}';
  final result = Result<Facility>.fromJson(json.decode(jStr));
  print(result.data.tem);
  sqlite();
}

Future<void> sqlite() async {
  var db = await openDatabase('my_db.db');
  print(db);
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        // Provider<Counter>(create: (_) => Counter()),
        Provider<Counter>.value(value: Counter(),),
        Provider<t.Test>.value(value: t.Test(),),
      ], 
      child: MaterialApp(
        title: 'Test',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          brightness: Brightness.light
        ),
        routes: {
          // '/': (_) => Consumer<Counter>(
          //   builder: (_, store, __) => Test(store),
          // ),
          '/': (_) => Test()
        },
      )
    );
  }
}