import 'package:dio/dio.dart';
import 'package:weather_app/models/weather_model.dart';

class WeatherService {
  final Dio dio;
  final String baseUrl = "https://api.weatherapi.com";
  final String apiKey = "66f18d8305ef4162918123449260909";
  WeatherService({required this.dio});

  Future<WeatherModel> getCurrentWeather({required String cityName}) async {
    Response response = await dio.get(
      "$baseUrl/v1/forecast.json?key=$apiKey&q=$cityName&days=1",
    );
    WeatherModel weatherModel = WeatherModel.fromJson(response.data);
    return weatherModel;
  }
}
