import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class MapViewer extends StatefulWidget {
  const MapViewer({super.key});

  @override
  _MapViewerState createState() => _MapViewerState();
}

class _MapViewerState extends State<MapViewer> {
  @override
  Widget build(BuildContext context) {
    return FlutterMap(
      options: MapOptions(
        // center: LatLng(-6.200000, 106.816666),
        center: const LatLng(-6.307332470724814, 106.82061421166996),
        zoom: 13.0,
        onPositionChanged: (pos, _) {
          log("${pos.center!.latitude},${pos.center!.longitude}");
        },
      ),
      children: [
        TileLayer(
          urlTemplate: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
          subdomains: const ['a', 'b', 'c'],
        ),
        const MarkerLayer(
          markers: [
            // Marker(
            //   width: 80.0,
            //   height: 80.0,
            //   point: LatLng(51.5, -0.09),
            //   builder: (ctx) => Container(
            //     child: FlutterLogo(),
            //   ),
            // ),
          ],
        ),
      ],
    );
  }
}
