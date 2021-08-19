
import 'package:flutter/material.dart';
import 'package:flutter_scrash_course/screen/location/location.dart';
import 'package:flutter_scrash_course/screen/location_detail/location_detail.dart';
import 'package:flutter_scrash_course/style.dart';

const LocationsRoute = '/';
const LocationDetailRoute = '/location_detail';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      onGenerateRoute: _routes(),
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          textTheme: TextTheme(title: AppBarTextStyle),
        ),
        textTheme:  TextTheme(
          title: TitleTextStyle,
          body1: Body1TextStyle,
        ),
        primarySwatch: Colors.blue,
      ),
      home: Locations(),
    );
  }

  RouteFactory _routes() {
    return (settings) {
      final arguments = settings.arguments as Map<String, dynamic>;
      Widget screen;
      switch (settings.name) {
        case LocationsRoute:
          screen = Locations(); break;
        case LocationDetailRoute:
          screen = LocationDetail(arguments['id']); break;
        default:
          return null;
      }
      return MaterialPageRoute(builder: (BuildContext context) => screen);
    };
  }

}

