import 'dart:async';

import 'package:flutter/material.dart';

import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
class RaqibLocation extends StatefulWidget {
  @override
  _RaqibLocationState createState() => _RaqibLocationState();
}

class _RaqibLocationState extends State<RaqibLocation> {

  Completer<GoogleMapController> _controller = Completer();
  static const LatLng _center = const LatLng(1.556919,103.630023);
  final Set<Marker> _markers = {};
  LatLng _lastMapPosition = _center;
  MapType _currentMapType = MapType.normal;

  @override
  Widget build(BuildContext context) {
    //   return new Scaffold
    // (
    //   body: Container(
    //     decoration: BoxDecoration(
    //                     gradient: LinearGradient(
    //                       begin: Alignment.topCenter,
    //                       end: Alignment.bottomCenter,
    //                       colors: [Colors.purple[400], Colors.purple[300], Colors.purple[200], Colors.purple[100]])),
    //     child: Column(
    //       children: <Widget>[
    //         Padding(
    //           padding: const EdgeInsets.only(top: 15.0,bottom: 5.0),
    //           child: Text(
    //             'Location',
    //             style: TextStyle(
    //               fontSize: 25.0,
    //               fontFamily: 'Oxanium',
    //               color: Colors.white,
    //               fontWeight: FontWeight.bold
    //               )
    //           ),
    //         ),
    //         new Container
    //         (
              
    //         ),
    //       ],
    //     ),
    //   )
    // );
    
    return new Scaffold
    (
      body: Stack
      (
        children: <Widget>
        [
          GoogleMap
          (
            onMapCreated: _onMapCreated,
            initialCameraPosition: CameraPosition(target: _center, zoom: 11),
            mapType: _currentMapType,
            markers: _markers,
            onCameraMove: _onCameraMove,

          ),
          

        ],
      )

    );
    
  }

_onMapCreated(GoogleMapController controller){
_controller.complete(controller);  
}
  
_onCameraMove(CameraPosition position){
  _lastMapPosition = position.target;
}
}