// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quiz_question.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuizQuestionModelImpl _$$QuizQuestionModelImplFromJson(
  Map<String, dynamic> json,
) => _$QuizQuestionModelImpl(
  question: json['question'] as String,
  options: (json['options'] as List<dynamic>).map((e) => e as String).toList(),
  correctAnswer: json['correct'] as String,
);

Map<String, dynamic> _$$QuizQuestionModelImplToJson(
  _$QuizQuestionModelImpl instance,
) => <String, dynamic>{
  'question': instance.question,
  'options': instance.options,
  'correct': instance.correctAnswer,
};
