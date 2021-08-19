import 'package:flutter/material.dart';
import 'package:flutter_scrash_course/screen/location_detail/text_section.dart';
import 'text_section.dart';
import 'image_banner.dart';
import '../../models/location.dart';


class LocationDetail extends StatelessWidget {
  // const LocationDetail({Key? key}) : super(key: key);

  final int _locationID;
  LocationDetail(this._locationID);

  @override
  Widget build(BuildContext context) {

    final location = Location.fetchById(_locationID);

    return Scaffold(
      appBar: AppBar(
        title: Text(location!.name),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          ImageBanner(location.imagePath),
        ]..addAll(textSection(location))
      ),
    );
  }

  List<Widget> textSection(Location location) {
    return location.fact.map((fact) => TextSection(fact.title, fact.text)).toList();
  }
}
