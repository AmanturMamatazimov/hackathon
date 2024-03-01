import 'package:best_flutter_ui_templates/server/apiSource.dart';
import 'package:flutter/material.dart';

import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:async';

import '../constants.dart';
import '../widgets/background.dart';
import '../widgets/draggablesection.dart';
import '../widgets/fancybar.dart';
import '../widgets/topsection.dart';
import 'package:location/location.dart' as loc;

class Home extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Home> {
  double top = 0.0;
  double initialTop = 0.0;

  Completer<GoogleMapController> _controller = Completer();

  void _onMapCreated(GoogleMapController controller) {
    _controller.complete(controller);
  }

  @override
  void initState() {
    BitmapDescriptor.fromAssetImage(
            ImageConfiguration(size: Size(50, 50)), 'assets/icon/logo.ico')
        .then((onValue) {
      setState(() {
        myIcon = onValue;
      });
    });
  }

  BitmapDescriptor? myIcon;

  Future<LatLng> getMyCoordsLocator() async {
    loc.LocationData? data = await ApiSource.getLocation();
    LatLng latLng;
    if (data != null) {
      latLng = LatLng(data.latitude!, data.longitude!);
    } else {
      latLng = const LatLng(42.882004, 74.582748);
    }
    return latLng;
  }

  @override
  Widget build(BuildContext context) {
    final baseTop = MediaQuery.of(context).size.height * 0.6;

    return Scaffold(
      body: FutureBuilder<LatLng>(
          future: getMyCoordsLocator(),
          builder: (context, snapshot) {
            if (snapshot.hasData)
              return Stack(
                children: <Widget>[
                  BackgroundImage(
                    mapWidget: GoogleMap(
                      padding: EdgeInsets.only(top: 50, right: 10),
                      myLocationEnabled: true,
                      myLocationButtonEnabled: true,
                      onMapCreated: _onMapCreated,
                      initialCameraPosition: CameraPosition(
                        target: snapshot.data!,
                        zoom: 18.0,
                      ),
                    ),
                  ),
                  /*Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.3,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            FancyBar(
                              child: Icon(Icons.menu,
                                  color: Colors.black, size: 20),
                              height: 46,
                              margin: EdgeInsets.only(left: 20, top: 40),
                            )
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            FancyBar(
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  */ /*Icon(Icons.layers,
                                      color: Colors.black, size: 20),*/ /*
                                  InkWell(
                                    onTap: () async {
                                      await getMyCoordsLocator();
                                      print('tap');
                                    },
                                    child: Transform.rotate(
                                        angle: 3.14 / 4,
                                        child: Icon(Icons.navigation,
                                            color: Colors.black, size: 20)),
                                  ),
                                  */ /*Icon(Icons.directions,
                                      color: Theme.of(context).primaryColor,
                                      size: 20),*/ /*
                                ],
                              ),
                              height: 16 * 3.0 */ /*46 * 3.0*/ /*,
                              margin: EdgeInsets.only(right: 20, top: 40),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),*/
                  GestureDetector(
                    onPanUpdate: (DragUpdateDetails details) {
                      final double scrollPos = details.globalPosition.dy;
                      if (scrollPos < baseTop && scrollPos > searchBarHeight) {
                        setState(() {
                          top = scrollPos;
                        });
                      }
                    },
                    child: DraggableScrollableSheet(
                      initialChildSize: 0.30,
                      minChildSize: 0.15,
                      builder: (BuildContext context,
                          ScrollController scrollController) {
                        return DraggableSection(
                            scrollController: scrollController);
                      },
                    ),

                    /*DraggableSection(
                  top: this.top == 0.0 ? baseTop : this.top,
                  searchBarHeight: searchBarHeight,
                ),*/
                  ),
                ],
              );
            return Center(
              child: CircularProgressIndicator(),
            );
          }),
    );
  }
}
