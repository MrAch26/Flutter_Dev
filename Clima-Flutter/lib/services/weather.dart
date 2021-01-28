import 'package:clima/ENV/env.dart';
import 'package:clima/services/location.dart';
import 'package:clima/services/networking.dart';

const apiKey = kAPI_KEY;
const urlWeather = 'https://api.openweathermap.org/data/2.5/weather';

class WeatherModel {
  Future<dynamic> getCityWeather(String cityName) async {
    var url = '$urlWeather?q=$cityName&appid=$apiKey&units=metric';

    NetworkHelper networkHelper = NetworkHelper(url: url);
    var weatherDataCity = await networkHelper.getData();
    return weatherDataCity;
  }

  Future<dynamic> getLocationWeather() async {
    Location ici = Location();
    await ici.getCurrentLocation();
    // double lat = ici.latitute;
    // double lon = ici.longitude;

    NetworkHelper nh = NetworkHelper(
        url:
            '$urlWeather?lat=${ici.latitute}&lon=${ici.longitude}&appid=$apiKey&units=metric');

    var weatherData = await nh.getData();

    return weatherData;
  }

  String getWeatherIcon(int condition) {
    if (condition < 300) {
      return '🌩';
    } else if (condition < 400) {
      return '🌧';
    } else if (condition < 600) {
      return '☔️';
    } else if (condition < 700) {
      return '☃️';
    } else if (condition < 800) {
      return '🌫';
    } else if (condition == 800) {
      return '☀️';
    } else if (condition <= 804) {
      return '☁️';
    } else {
      return '🤷‍';
    }
  }

  String getMessage(int temp) {
    if (temp > 25) {
      return 'It\'s 🍦 time';
    } else if (temp > 20) {
      return 'Time for shorts and 👕';
    } else if (temp < 10) {
      return 'You\'ll need 🧣 and 🧤';
    } else {
      return 'Bring a 🧥 just in case';
    }
  }
}
