import 'package:flutter/material.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: Image(image: AssetImage('images/logo.png')),
        title: Container(
          height: 36,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  primary: Colors.white,
                  side: BorderSide(color: Colors.white, width: 2),
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0))),
                  textStyle: TextStyle(
                    fontSize: 18,
                  ),
                ),
                onPressed: () {},
                child: Text('Fly'),
              ),
              Text(
                'Sleep',
                style: TextStyle(fontSize: 17, color: Color(0xFFdddddd)),
              ),
              Text(
                'Eat',
                style: TextStyle(fontSize: 17, color: Color(0xFFdddddd)),
              ),
            ],
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(20, 0, 20, 8),
            width: MediaQuery
                .of(context)
                .size
                .width * 0.9,
            color: Color(0xFF6d185e),
            child: ListTile(
              leading: Icon(Icons.person, color: Colors.white, size: 30,),
              horizontalTitleGap: 0,
              title: Text(
                '1 Adult, Economy',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(20, 0, 20, 8),
            width: MediaQuery
                .of(context)
                .size
                .width * 0.9,
            color: Color(0xFF6d185e),
            child: ListTile(
              leading: Icon(Icons.location_on, color: Colors.white, size: 30,),
              horizontalTitleGap: 0,
              title: Text(
                'Seoul, South Korea',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(20, 0, 20, 8),
            width: MediaQuery
                .of(context)
                .size
                .width * 0.9,
            color: Color(0xFF6d185e),
            child: ListTile(
              leading: Icon(Icons.airplanemode_active, color: Color(0xFFF7D4F1), size: 30,),
              horizontalTitleGap: 0,
              title: Text(
                'Choose Destination',
                style: TextStyle(fontSize: 18, color: Color(0xFFF7D4F1)),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(20, 0, 20, 8),
            width: MediaQuery
                .of(context)
                .size
                .width * 0.9,
            color: Color(0xFF6d185e),
            child: ListTile(
              leading: Icon(Icons.calendar_today, color: Colors.white, size: 30,),
              horizontalTitleGap: 0,
              title: Text(
                'Jan 13 - Jan 30',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
