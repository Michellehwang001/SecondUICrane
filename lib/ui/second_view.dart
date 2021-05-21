import 'package:flutter/material.dart';
import 'package:second_ui_crane/ui/travel_list.dart';

class SecondView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const double circularBoxHeight = 20.0;
    final Size size = MediaQuery.of(context).size;
    print('size.height->' + size.toString());

          return Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(circularBoxHeight),
                  topRight: Radius.circular(circularBoxHeight)),
              border: Border.all(color: Colors.white),
            ),
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: TravelList(),
            ),
        );
  }
}
