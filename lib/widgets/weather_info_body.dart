import 'package:flutter/material.dart';
import 'package:weather_app/models/weather_model.dart';

class WeatherInfoBody extends StatelessWidget {
  final WeatherModel weatherModel;
  const WeatherInfoBody({Key? key, required this.weatherModel})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            weatherModel.cityName,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
          ),
          Text(
            'updated at ${weatherModel.updateTime.hour}:${weatherModel.updateTime.minute}',
            style: const TextStyle(fontSize: 24),
          ),
          const SizedBox(height: 32),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 40,
            children: [
              Image.network(weatherModel.conditionImageUrl),
              Text(
                weatherModel.avgTemp.round().toString(),
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 32,
                ),
              ),
              Column(
                children: [
                  Text(
                    'Min Temp: ${weatherModel.minTemp.round()}',
                    style: const TextStyle(fontSize: 16),
                  ),
                  Text(
                    'Max Temp: ${weatherModel.maxTemp.round()}',
                    style: const TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 32),
          const Text(
            'Ligh Rain',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
          ),
        ],
      ),
    );
  }
}
