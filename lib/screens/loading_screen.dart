import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:weatherly/screens/location_screen.dart';
import 'package:weatherly/services/weather.dart';

const spinKit = SpinKitRotatingCircle(
  color: Colors.white,
  size: 50.0,
);

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    getLocationData();
    super.initState();
  }

  void getLocationData() async {
    var weatherData = await WeatherModel().getWeatherLocation();

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
    return Scaffold(
      body: Center(
        child: spinKit,
      ),
    );
  }
}
