import 'package:flutter/material.dart';

import '1.dart';

class RightPage extends StatelessWidget {
  final String title;

  RightPage(this.title);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.title),
      ),
      body: Center(

        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.

        child: Column(

          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            // 仿写知识点：6.3 ListView
            // (https://book.flutterchina.club/chapter6/listview.html#_6-3-listview)
            ListView(
              shrinkWrap: true,
              padding: const EdgeInsets.all(20.0),
              children: const <Widget>[
                Text('这是一个列表'),
                Text('这是一个列表2'),
                Text('这是一个列表3'),
                Text('这是一个列表4'),
              ],
            ),
            const Text(
              'You have clicked the button this many times:',
            ),

            // 仿写知识点：4.5 流式布局
            // (https://book.flutterchina.club/chapter4/wrap_and_flow.html#_4-5-%E6%B5%81%E5%BC%8F%E5%B8%83%E5%B1%80)
            Flow(
              delegate: TestFlowDelegate(margin: EdgeInsets.all(10.0)),
              children: <Widget>[
                Container(width: 80.0, height:80.0, color: Colors.red,),
                Container(width: 80.0, height:80.0, color: Colors.green,),
                Container(width: 80.0, height:80.0, color: Colors.blue,),
                Container(width: 80.0, height:80.0,  color: Colors.yellow,),
                Container(width: 80.0, height:80.0, color: Colors.brown,),
                Container(width: 80.0, height:80.0,  color: Colors.purple,),
              ],
            ),
            // 仿写知识点：3.2 按钮
            // （https://book.flutterchina.club/chapter3/buttons.html#_3-2-%E6%8C%89%E9%92%AE）
            ElevatedButton.icon(
              icon: Icon(Icons.send),
              label: Text("发送"),
              onPressed: () {  },
            ),
            OutlinedButton.icon(
              icon: Icon(Icons.add),
              label: Text("添加"),
              onPressed: () {  },
            ),
            TextButton.icon(
              icon: Icon(Icons.info),
              label: Text("详情"),
              onPressed: () {  },
            ),

            // 仿写知识点：5.4 容器组件（Container）
            // (https://book.flutterchina.club/chapter5/container.html#_5-4-%E5%AE%B9%E5%99%A8%E7%BB%84%E4%BB%B6-container)
            Container(
              padding: EdgeInsets.all(20.0), //容器内补白
              color: Colors.orange,
              child: Text("容器类组件"),
            ),



          ],
        ),
      ),
    );
  }
}
