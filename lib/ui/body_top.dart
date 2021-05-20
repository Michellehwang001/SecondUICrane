import 'package:flutter/material.dart';

class BodyTop extends StatefulWidget {
  @override
  _BodyTopState createState() => _BodyTopState();
}

class _BodyTopState extends State<BodyTop> {
  @override
  Widget build(BuildContext context) {
    return Column(
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
            leading: Icon(
              Icons.airplanemode_active, color: Color(0xFFF7D4F1), size: 30,),
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
            leading: Icon(
              Icons.calendar_today, color: Colors.white, size: 30,),
            horizontalTitleGap: 0,
            title: Text(
              'Jan 13 - Jan 30',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
