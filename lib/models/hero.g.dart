// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hero.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Hero _$HeroFromJson(Map<String, dynamic> json) {
  return Hero(
    name: json['name'] as String,
    realName: json['realname'] as String,
    team: json['team'] as String,
    firstAppearance: json['firstappearance'] as String,
    createdBy: json['createdby'] as String,
    publisher: json['publisher'] as String,
    imageURL: json['imageurl'] as String,
    bio: json['bio'] as String,
  );
}

Map<String, dynamic> _$HeroToJson(Hero instance) => <String, dynamic>{
      'name': instance.name,
      'realname': instance.realName,
      'team': instance.team,
      'firstappearance': instance.firstAppearance,
      'createdby': instance.createdBy,
      'publisher': instance.publisher,
      'imageurl': instance.imageURL,
      'bio': instance.bio,
    };
