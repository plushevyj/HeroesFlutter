import 'package:json_annotation/json_annotation.dart';

part 'hero.g.dart';

@JsonSerializable()
class Hero {
  @JsonKey(name: 'name')
  final String name;

  @JsonKey(name: 'realname')
  final String realName;

  @JsonKey(name: 'team')
  final String team;

  @JsonKey(name: 'firstappearance')
  final String firstAppearance;

  @JsonKey(name: 'createdby')
  final String createdBy;

  @JsonKey(name: 'publisher')
  final String publisher;

  @JsonKey(name: 'imageurl')
  final String imageURL;

  @JsonKey(name: 'bio')
  final String bio;

  Hero({
    required this.name,
    required this.realName,
    required this.team,
    required this.firstAppearance,
    required this.createdBy,
    required this.publisher,
    required this.imageURL,
    required this.bio
  });

  factory Hero.fromJson(Map<String, dynamic> json) => _$HeroFromJson(json);
  Map<String, dynamic> toJson() => _$HeroToJson(this);
}