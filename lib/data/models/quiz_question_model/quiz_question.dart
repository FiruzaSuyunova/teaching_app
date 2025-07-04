import 'package:freezed_annotation/freezed_annotation.dart';

part 'quiz_question.freezed.dart';
part 'quiz_question.g.dart';

@freezed
class QuizQuestionModel with _$QuizQuestionModel {
  const factory QuizQuestionModel({
    required String question,
    required List<String> options,
    @JsonKey(name: 'correct') required String correctAnswer,
  }) = _QuizQuestionModel;

  factory QuizQuestionModel.fromJson(Map<String, dynamic> json) =>
      _$QuizQuestionModelFromJson(json);
}