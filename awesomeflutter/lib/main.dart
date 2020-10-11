import 'package:awesomeflutter/app_screens/home.dart';
import 'package:flutter/material.dart';
import 'package:draw_graph/draw_graph.dart';

void main() {
  runApp(MaterialApp(
    title: "UI widget",
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: Text("UI Title"),
      ),
      body: getCustomListView(),
      //body: getSimpleListView(),
      //body: Home(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugPrint("FAB clicked");
        },
        child: Icon(Icons.add),
        tooltip: "Add One more item",
      ),
    ),
  ));
}

void showSnackBar(BuildContext context, String item) {
  var snackBar = SnackBar(
    content: Text("You just tap the $item"),
    action: SnackBarAction(
        label: "Tap Here",
        onPressed: () {
          debugPrint("Click on Snackbar icon");
        }),
  );

  Scaffold.of(context).showSnackBar(snackBar);
}

Widget getSimpleListView() {
  var listView = ListView(
    children: [
      ListTile(
        leading: Icon(Icons.landscape),
        title: Text("Landscape"),
        subtitle: Text("Beautiful View"),
        trailing: Icon(Icons.wb_sunny),
        onTap: () {
          debugPrint("Tapped Landscape");
        },
      ),
      ListTile(
        leading: Icon(Icons.desktop_windows),
        title: Text("Windows"),
      ),
      ListTile(
        leading: Icon(Icons.phone),
        title: Text("Phone"),
      ),
      Text("This is the text line"),
      Container(
        color: Colors.red,
        height: 40.0,
      )
    ],
  );
  return listView;
}

List<String> getListElements() {
  var items = List<String>.generate(1000, (index) => "item $index");
  return items;
}

Widget getCustomListView() {
  var listItems = getListElements();

  var listView = ListView.builder(itemBuilder: (context, index) {
    return ListTile(
      leading: Icon(Icons.arrow_right),
      title: Text(listItems[index]),
      onTap: () {
        debugPrint("selected index is ${listItems[index]}");
        showSnackBar(context, listItems[index]);
      },
    );
  });

  return listView;
}
