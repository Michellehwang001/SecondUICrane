import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'package:intl/intl.dart';

class SelectDates extends StatefulWidget {
  const SelectDates({Key key}) : super(key: key);

  @override
  _SelectDatesState createState() => _SelectDatesState();
}

class _SelectDatesState extends State<SelectDates> {
  String _title = 'Select Dates';

  void _onSelectionChanged(DateRangePickerSelectionChangedArgs args) {

    setState(() {
      if (args.value is PickerDateRange) {
        _title = DateFormat('MMM dd').format(args.value.startDate).toString() +
            ' - ' +
            DateFormat('MMM dd')
                .format(args.value.endDate ?? args.value.startDate)
                .toString();
      }
    });

  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () => Navigator.pop(context, _title),
          ),
          title: Text(_title),
          elevation: 0,
        ),
        body: Container(
          child: SfDateRangePicker(
            // controller: myController,
            selectionMode: DateRangePickerSelectionMode.range,
            view: DateRangePickerView.month,
            monthFormat: 'MMM',
            monthCellStyle: DateRangePickerMonthCellStyle(
              textStyle: TextStyle(fontSize: 18),
              todayTextStyle: TextStyle(fontSize: 18),
            ),
            rangeTextStyle: TextStyle(fontSize: 18),
            navigationDirection: DateRangePickerNavigationDirection.vertical,
            selectionTextStyle: TextStyle(color: Colors.white, fontSize: 18),
            rangeSelectionColor: Colors.red,
            navigationMode: DateRangePickerNavigationMode.scroll,
            onSelectionChanged: _onSelectionChanged,
          ),
        ),
      );
  }
}
