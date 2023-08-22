// To parse this JSON data, do
//
//     final infomodal = infomodalFromJson(jsonString);

import 'dart:convert';

Infomodal infomodalFromJson(String str) => Infomodal.fromJson(json.decode(str));

String infomodalToJson(Infomodal data) => json.encode(data.toJson());

class Infomodal {
  String? status;
  Result? result;

  Infomodal({
    this.status,
    this.result,
  });

  factory Infomodal.fromJson(Map<String, dynamic> json) => Infomodal(
    status: json["status"],
    result: json["result"] == null ? null : Result.fromJson(json["result"]),
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "result": result?.toJson(),
  };
}

class Result {
  int? isPrivate;
  String? fullName;
  int? isActive;
  int? usertagsCount;
  int? mediaCount;
  int? isCached;
  int? geoMediaCount;
  String? ageNow;
  String? username;
  String? externalUrl;
  int? isFavorite;
  String? biography;
  int? pk;
  String? age;
  int? followingCount;
  String? profilePicUrl;
  int? followerCount;
  int? id;
  DateTime? dtCreated;

  Result({
    this.isPrivate,
    this.fullName,
    this.isActive,
    this.usertagsCount,
    this.mediaCount,
    this.isCached,
    this.geoMediaCount,
    this.ageNow,
    this.username,
    this.externalUrl,
    this.isFavorite,
    this.biography,
    this.pk,
    this.age,
    this.followingCount,
    this.profilePicUrl,
    this.followerCount,
    this.id,
    this.dtCreated,
  });

  factory Result.fromJson(Map<String, dynamic> json) => Result(
    isPrivate: json["is_private"],
    fullName: json["full_name"],
    isActive: json["is_active"],
    usertagsCount: json["usertags_count"],
    mediaCount: json["media_count"],
    isCached: json["is_cached"],
    geoMediaCount: json["geo_media_count"],
    ageNow: json["age_now"],
    username: json["username"],
    externalUrl: json["external_url"],
    isFavorite: json["is_favorite"],
    biography: json["biography"],
    pk: json["pk"],
    age: json["age"],
    followingCount: json["following_count"],
    profilePicUrl: json["profile_pic_url"],
    followerCount: json["follower_count"],
    id: json["id"],
    dtCreated: json["dt_created"] == null ? null : DateTime.parse(json["dt_created"]),
  );

  Map<String, dynamic> toJson() => {
    "is_private": isPrivate,
    "full_name": fullName,
    "is_active": isActive,
    "usertags_count": usertagsCount,
    "media_count": mediaCount,
    "is_cached": isCached,
    "geo_media_count": geoMediaCount,
    "age_now": ageNow,
    "username": username,
    "external_url": externalUrl,
    "is_favorite": isFavorite,
    "biography": biography,
    "pk": pk,
    "age": age,
    "following_count": followingCount,
    "profile_pic_url": profilePicUrl,
    "follower_count": followerCount,
    "id": id,
    "dt_created": dtCreated?.toIso8601String(),
  };
}
