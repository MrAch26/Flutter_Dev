import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'location_screen.dart';
import 'package:clima/services/weather.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    getLocationData();
  }

  void getLocationData() async {
    // WeatherModel weatherModel = WeatherModel();
    var weatherData = await WeatherModel().getLocationWeather();

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return LocationScreen(
            locationWeather: weatherData,
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // String myMargin = 'dada';
    // double myMarginParsed;

    // try {
    //   myMarginParsed = double.parse(myMargin);
    // } catch (e) {
    //   print(e);
    //   // myMarginParsed = 20;
    // }

    return Scaffold(
      body: SpinKitFoldingCube(
        color: Colors.white,
        size: 100.0,
      ),
    );
  }
}
