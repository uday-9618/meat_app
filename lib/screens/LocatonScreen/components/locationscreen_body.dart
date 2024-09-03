// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class LocationState extends StatefulWidget {
  const LocationState({super.key});

  @override
  State<LocationState> createState() => _LocationStateState();
}

class _LocationStateState extends State<LocationState> {
  String _locationMessage = "Press the button to get location";

  void getCurrentLocation() async {
    LocationPermission permission = await Geolocator.checkPermission();
    
    if (permission == LocationPermission.denied || permission == LocationPermission.deniedForever) {
      permission = await Geolocator.requestPermission();
      
      if (permission == LocationPermission.denied || permission == LocationPermission.deniedForever) {
        setState(() {
          _locationMessage = "Location permissions are denied";
        });
        return;
      }
    }

    Position currentPosition = await Geolocator.getCurrentPosition(
      // ignore: deprecated_member_use
      desiredAccuracy: LocationAccuracy.best,
    );

    setState(() {
      _locationMessage = "Latitude: ${currentPosition.latitude}, Longitude: ${currentPosition.longitude}";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text("Geo Locator"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              _locationMessage,
              textAlign: TextAlign.center,
            ),
             SizedBox(height: 20),
            ElevatedButton(
              onPressed: getCurrentLocation,
              child:  Text("Enable Location"),
            ),
          ],
        ),
      ),
    );
  }
}
