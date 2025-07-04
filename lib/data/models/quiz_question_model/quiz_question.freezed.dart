// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quiz_question.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

QuizQuestionModel _$QuizQuestionModelFromJson(Map<String, dynamic> json) {
  return _QuizQuestionModel.fromJson(json);
}

/// @nodoc
mixin _$QuizQuestionModel {
  String get question => throw _privateConstructorUsedError;
  List<String> get options => throw _privateConstructorUsedError;
  @JsonKey(name: 'correct')
  String get correctAnswer => throw _privateConstructorUsedError;

  /// Serializes this QuizQuestionModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of QuizQuestionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QuizQuestionModelCopyWith<QuizQuestionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuizQuestionModelCopyWith<$Res> {
  factory $QuizQuestionModelCopyWith(
    QuizQuestionModel value,
    $Res Function(QuizQuestionModel) then,
  ) = _$QuizQuestionModelCopyWithImpl<$Res, QuizQuestionModel>;
  @useResult
  $Res call({
    String question,
    List<String> options,
    @JsonKey(name: 'correct') String correctAnswer,
  });
}

/// @nodoc
class _$QuizQuestionModelCopyWithImpl<$Res, $Val extends QuizQuestionModel>
    implements $QuizQuestionModelCopyWith<$Res> {
  _$QuizQuestionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuizQuestionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? question = null,
    Object? options = null,
    Object? correctAnswer = null,
  }) {
    return _then(
      _value.copyWith(
            question: null == question
                ? _value.question
                : question // ignore: cast_nullable_to_non_nullable
                      as String,
            options: null == options
                ? _value.options
                : options // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            correctAnswer: null == correctAnswer
                ? _value.correctAnswer
                : correctAnswer // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$QuizQuestionModelImplCopyWith<$Res>
    implements $QuizQuestionModelCopyWith<$Res> {
  factory _$$QuizQuestionModelImplCopyWith(
    _$QuizQuestionModelImpl value,
    $Res Function(_$QuizQuestionModelImpl) then,
  ) = __$$QuizQuestionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String question,
    List<String> options,
    @JsonKey(name: 'correct') String correctAnswer,
  });
}

/// @nodoc
class __$$QuizQuestionModelImplCopyWithImpl<$Res>
    extends _$QuizQuestionModelCopyWithImpl<$Res, _$QuizQuestionModelImpl>
    implements _$$QuizQuestionModelImplCopyWith<$Res> {
  __$$QuizQuestionModelImplCopyWithImpl(
    _$QuizQuestionModelImpl _value,
    $Res Function(_$QuizQuestionModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of QuizQuestionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? question = null,
    Object? options = null,
    Object? correctAnswer = null,
  }) {
    return _then(
      _$QuizQuestionModelImpl(
        question: null == question
            ? _value.question
            : question // ignore: cast_nullable_to_non_nullable
                  as String,
        options: null == options
            ? _value._options
            : options // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        correctAnswer: null == correctAnswer
            ? _value.correctAnswer
            : correctAnswer // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$QuizQuestionModelImpl implements _QuizQuestionModel {
  const _$QuizQuestionModelImpl({
    required this.question,
    required final List<String> options,
    @JsonKey(name: 'correct') required this.correctAnswer,
  }) : _options = options;

  factory _$QuizQuestionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuizQuestionModelImplFromJson(json);

  @override
  final String question;
  final List<String> _options;
  @override
  List<String> get options {
    if (_options is EqualUnmodifiableListView) return _options;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_options);
  }

  @override
  @JsonKey(name: 'correct')
  final String correctAnswer;

  @override
  String toString() {
    return 'QuizQuestionModel(question: $question, options: $options, correctAnswer: $correctAnswer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuizQuestionModelImpl &&
            (identical(other.question, question) ||
                other.question == question) &&
            const DeepCollectionEquality().equals(other._options, _options) &&
            (identical(other.correctAnswer, correctAnswer) ||
                other.correctAnswer == correctAnswer));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    question,
    const DeepCollectionEquality().hash(_options),
    correctAnswer,
  );

  /// Create a copy of QuizQuestionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QuizQuestionModelImplCopyWith<_$QuizQuestionModelImpl> get copyWith =>
      __$$QuizQuestionModelImplCopyWithImpl<_$QuizQuestionModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$QuizQuestionModelImplToJson(this);
  }
}

abstract class _QuizQuestionModel implements QuizQuestionModel {
  const factory _QuizQuestionModel({
    required final String question,
    required final List<String> options,
    @JsonKey(name: 'correct') required final String correctAnswer,
  }) = _$QuizQuestionModelImpl;

  factory _QuizQuestionModel.fromJson(Map<String, dynamic> json) =
      _$QuizQuestionModelImpl.fromJson;

  @override
  String get question;
  @override
  List<String> get options;
  @override
  @JsonKey(name: 'correct')
  String get correctAnswer;

  /// Create a copy of QuizQuestionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QuizQuestionModelImplCopyWith<_$QuizQuestionModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
