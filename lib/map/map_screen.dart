import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geocoding/geocoding.dart';

class MapScreen extends StatefulWidget {
  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  late GoogleMapController mapController;
  final LatLng _center = const LatLng(45.521563, -122.677433);
  late MapType _currentMapType = MapType.normal;

  final Set<Marker> _markers = {};

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
    setState(() {
      _markers.add(
        Marker(
          markerId: MarkerId('home'),
          position: _center,
          infoWindow: InfoWindow(
            title: 'Home',
            snippet: 'My home',
          ),
        ),
      );
    });
  }

  void _onMapTypeButtonPressed() {
    setState(() {
      _currentMapType = _currentMapType == MapType.normal
          ? MapType.satellite
          : MapType.normal;
    });
  }

  TextEditingController searchController = TextEditingController();

  Future<void> _searchPlace(String searchText) async {
    try {
      List<Location> locations = await locationFromAddress(searchText);
      Location location = locations.first;
      mapController.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(
          target: LatLng(location.latitude, location.longitude), zoom: 15)));
      setState(() {
        _markers.clear();
        _markers.add(Marker(
          markerId: MarkerId(location.toString()),
          position: LatLng(location.latitude, location.longitude),
          infoWindow: InfoWindow(title: searchText, snippet: "Destination"),
        ));
      });
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          controller: searchController,
          decoration: InputDecoration(
            hintText: 'Search',
            hintStyle: TextStyle(color: Colors.white),
            border: InputBorder.none,
            suffixIcon: IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                _searchPlace(searchController.text);
              },
            ),
          ),
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.green[700],
      ),
      body: GoogleMap(
        onMapCreated: _onMapCreated,
        initialCameraPosition: CameraPosition(
          target: _center,
          zoom: 11.0,
        ),
        markers: _markers,
        mapType: _currentMapType,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _onMapTypeButtonPressed,
        child: Icon(Icons.map),
        backgroundColor: Colors.green[700],
      ),
    );
  }
}
