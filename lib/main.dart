import 'package:flutter/material.dart';
import 'package:second_ui_crane/ui/body_top.dart';
import 'package:second_ui_crane/ui/main_appbar.dart';
import 'package:second_ui_crane/ui/second_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color(0xFF571e4d),
        scaffoldBackgroundColor: Color(0xFF571e4d),
        accentColor: Colors.yellowAccent,
        textTheme: TextTheme(bodyText2: TextStyle(color: Colors.white)),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int selectedPage = 1;
  bool _isTop = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _isTop
          ? MainAppbar(
              isTop: _isTop,
            )
          : null,
      body: Stack(
        children: [
          Positioned.fill(
            child: BodyTop(),
          ),
          DraggableScrollableSheet(
              initialChildSize: 0.66,
              maxChildSize: 0.999,
              minChildSize: 0.15,
              builder: (context, scrollController) {
                return SingleChildScrollView(
                  controller: scrollController,
                  child: SecondView(),
                );
              }),
        ],
      ),
    );
  }
}
