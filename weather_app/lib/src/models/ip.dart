part of models;

abstract class Ip implements Built<Ip, IpBuilder> {
  factory Ip([void Function(IpBuilder b) updates]) = _$Ip;
  factory Ip.fromJson(dynamic json) => serializers.deserializeWith(serializer, json)!;

  Ip._();

  String get ip;

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this)! as Map<String, dynamic>;

  static Serializer<Ip> get serializer => _$ipSerializer;
}
