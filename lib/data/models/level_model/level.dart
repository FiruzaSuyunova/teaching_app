import 'package:freezed_annotation/freezed_annotation.dart';

part 'level.freezed.dart';
part 'level.g.dart';

@freezed
class LevelModel with _$LevelModel {
  const factory LevelModel({
    required String id,
    required String title,
  }) = _LevelModel;

  factory LevelModel.fromJson(Map<String, dynamic> json) =>
      _$LevelModelFromJson(json);
}