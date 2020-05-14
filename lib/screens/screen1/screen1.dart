import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Screen1 extends StatefulWidget {
  @override
  State<Screen1> createState() => Screen1State();
}

class Screen1State extends State<Screen1> {
  Completer<GoogleMapController> _controller = Completer();

  static final LatLng colosseoLatLng = LatLng(41.890251, 12.492373);

  static final CameraPosition colosseo = CameraPosition(
    target: LatLng(41.890251, 12.492373),
    zoom: 16.5,
  );

  static final Marker colosseoMarker = Marker(
    // This marker id can be anything that uniquely identifies each marker.
    markerId: MarkerId(colosseoLatLng.toString()),
    //_lastMapPosition is any coordinate which should be your default
    //position when map opens up
    position: colosseoLatLng,
    infoWindow: InfoWindow(
      title: 'Colosseo',
      snippet: 'Roma, Italy',
    ),
    icon: BitmapDescriptor.defaultMarker,
  );

  static final Polyline foriImperiali = Polyline(
    polylineId: PolylineId(colosseoLatLng.toString()),
    visible: true,
    width: 7,
    color: Colors.green,
    points: [
      LatLng(41.891456, 12.490189),
      LatLng(41.891436, 12.490261),
      LatLng(41.891348, 12.490476),
      LatLng(41.891300, 12.490733),
      LatLng(41.891260, 12.490911)
    ],
  );

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: GoogleMap(
        mapType: MapType.normal,
        initialCameraPosition: colosseo,
        polylines: <Polyline>{foriImperiali},
        markers: <Marker>{colosseoMarker},
        myLocationButtonEnabled: true,
        myLocationEnabled: true,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
      ),
    );
  }
}
