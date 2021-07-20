part of models;

abstract class WeatherData implements Built<WeatherData, WeatherDataBuilder> {
  factory WeatherData([void Function(WeatherDataBuilder) updates]) = _$WeatherData;

  factory WeatherData.fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(serializer, json)!;
  }

  WeatherData._();

  int? get id;

  String? get main;

  String? get description;

  String? get icon;

  static Serializer<WeatherData> get serializer => _$weatherDataSerializer;
}
