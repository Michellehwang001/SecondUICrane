import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class ViewLocation extends StatefulWidget {
  const ViewLocation({Key key}) : super(key: key);

  @override
  _ViewLocationState createState() => _ViewLocationState();
}

class _ViewLocationState extends State<ViewLocation> {
  Completer<GoogleMapController> _controller = Completer();

  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(200.0),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 20, 0, 10),
            child: AppBar(
              // 뒤로가기 버튼이 없어짐.
              automaticallyImplyLeading: false,
              title: Text('Madrid Spain', style: Theme.of(context).textTheme.headline3,),
              leadingWidth: 100,
              elevation: 3,
            ),
          ),
        ),
        body: GoogleMap(
          mapType: MapType.hybrid,
          initialCameraPosition: _kGooglePlex,
          onMapCreated: (GoogleMapController controller) {
            _controller.complete(controller);
          },
        ),
    );
  }
}
