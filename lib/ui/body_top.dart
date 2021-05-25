import 'package:flutter/material.dart';
import 'package:second_ui_crane/ui/select_dates.dart';

class BodyTop extends StatefulWidget {
  @override
  _BodyTopState createState() => _BodyTopState();
}

class _BodyTopState extends State<BodyTop> {
  String _selectDate;

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
                style: TextStyle(fontSize: 18),
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
              selected: true,
              leading: Icon(
                Icons.calendar_today, color: _selectDate == null ? Color(0xFFF7D4F1) : Colors.white, size: 30,),
              horizontalTitleGap: 0,
              title: Text(_selectDate ?? 'Select Dates',
                style: TextStyle(fontSize: 18, color: _selectDate == null ? Color(0xFFF7D4F1) : Colors.white),
              ),
              // 선택한 날자값 받아오기
              onTap: () => _navigatorReturnValue(context),
            ),
          ),
        ],
    );
  }

  // 선택한 날짜 가져오기
  _navigatorReturnValue(BuildContext context) async{
    final result = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SelectDates()),
    );

    setState(() {
      _selectDate = result;
    });
  }

}
