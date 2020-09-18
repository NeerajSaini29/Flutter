
organise the flutter code in different class instead of runApp function with StatelessWidget:--

if we have we have expression with single statement the we can convert into Fat annotation like following.

Normal expression
void main() {
    runApp(MyFlutterApp());
} 

Fat annotation expression
void main() => runApp(MyFlutterApp());

To remove the debug tag use debugShowCheckedModeBanner property with in MaterialApp widget.

MaterialApp:-- this widget represent the whole screen of app.
properties:-- title (show the title when app show in background tray), home (represent the app screen)

Scaffold:--
properties:-- appBar (this is used to define the Navigation Bar of the app), body (in this property we define the content of the screen)





