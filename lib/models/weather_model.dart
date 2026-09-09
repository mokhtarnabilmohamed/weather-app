class WeatherModel {
  final String cityName;
  final String searchTime;
  final String weatherCondition;
  final String conditionImageUrl;
  final double avgTemp;
  final double maxTemp;
  final double minTemp;

  WeatherModel({
    required this.cityName,
    required this.searchTime,
    required this.weatherCondition,
    required this.conditionImageUrl,
    required this.avgTemp,
    required this.maxTemp,
    required this.minTemp,
  });

  factory WeatherModel.fromJson(json) {
    return WeatherModel(
      cityName: json['location']["name"],
      searchTime: json["current"]["last_updated"],
      weatherCondition:
          json["forecast"]["forecastday"][0]["day"]["condition"]["text"],
      conditionImageUrl:
          json["forecast"]["forecastday"][0]["day"]["condition"]["icon"],
      avgTemp: json["forecast"]["forecastday"][0]["day"]["avgtemp_c"],
      maxTemp: json["forecast"]["forecastday"][0]["day"]["maxtemp_c"],
      minTemp: json["forecast"]["forecastday"][0]["day"]["mintemp_c"],
    );
  }
}
