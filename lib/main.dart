import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<ListData> monitorList = new List();


  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    getList();

    return Scaffold(
        appBar: AppBar(
          title: Text("Flutter Rest Api"),
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return Card( //
              elevation: 8, //                           <-- Card widget
              child: Padding(
                padding: const EdgeInsets.fromLTRB(2.0, 4.0, 2.0, 4.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Flexible(
                      child: Container(
                        width: 150,
                        height: 150,
                        color: monitorList[index].color,
                      ),
                      flex: 1,
                    ),
                    Flexible(child: Text(
                      'The ID is $index', style: TextStyle(fontSize: 16),),
                      flex: 1,),
                    Flexible(
                      child: Text(monitorList[index].description,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(fontSize: 16),),
                      flex: 1,
                    )
                  ],
                ),
              ),
            );
          },
          itemCount: monitorList.length,
        )
    );
  }


  getList() {
    monitorList.add(ListData(Colors.blue, "Abcdefghijklmnopqrstuvwxyz"));
    monitorList.add(ListData(Colors.yellow, "Abcdefghijklmnopqrstuvwxyz"));
    monitorList.add(ListData(Colors.blue, "Abcdefghijklmnopqrstuvwxyz"));
    monitorList.add(ListData(Colors.red, "Abcdefghijklmnopqrstuvwxyz"));
    monitorList.add(ListData(Colors.pink, "Abcdefghijklmnopqrstuvwxyz"));
    monitorList.add(ListData(Colors.purple, "Abcdefghijklmnopqrstuvwxyz"));
    monitorList.add(ListData(Colors.blueGrey, "Abcdefghijklmnopqrstuvwxyz"));
    monitorList.add(ListData(Colors.deepOrange, "Abcdefghijklmnopqrstuvwxyz"));
    monitorList.add(ListData(Colors.lime, "Abcdefghijklmnopqrstuvwxyz"));
    monitorList.add(ListData(Colors.teal, "Abcdefghijklmnopqrstuvwxyz"));
    monitorList.add(ListData(Colors.blueGrey, "Abcdefghijklmnopqrstuvwxyz"));
    monitorList.add(ListData(Colors.red, "Abcdefghijklmnopqrstuvwxyz"));
    monitorList.add(ListData(Colors.teal, "Abcdefghijklmnopqrstuvwxyz"));
    monitorList.add(ListData(Colors.yellow, "Abcdefghijklmnopqrstuvwxyz"));
  }
}

class ListData {

  ListData(this.color, this.description);

  var color = Colors.blue;
  var description = "";

}

