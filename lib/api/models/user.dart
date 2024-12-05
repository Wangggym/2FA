import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class User {
  final String id;
  @JsonKey(name: 'email', defaultValue: '')
  final String email;
  @JsonKey(name: 'nickname', defaultValue: '')
  final String nickname;
  @JsonKey(name: 'sync_enabled')
  final bool syncEnabled;

  @JsonKey(name: 'last_sync_at')
  final DateTime lastSyncAt;
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;

  User({
    required this.id,
    required this.email,
    required this.nickname,
    required this.syncEnabled,
    required this.lastSyncAt,
    required this.createdAt,
    required this.updatedAt,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);
}