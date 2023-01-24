// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'learning_path_complete_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LearningPathComplete _$$_LearningPathCompleteFromJson(
        Map<String, dynamic> json) =>
    _$_LearningPathComplete(
      id: json['id'] as String,
      title: json['title'] as String,
      thumbnail: json['thumbnail'] as String,
      summary: json['summary'] as String,
      score: json['score'] as int,
      duration: json['duration'] as String,
      counts: Counts.fromJson(json['counts'] as Map<String, dynamic>),
      steps: (json['steps'] as List<dynamic>)
          .map((e) => LearningPathStep.fromJson(e as Map<String, dynamic>))
          .toList(),
      author: Author.fromJson(json['author'] as Map<String, dynamic>),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$_LearningPathCompleteToJson(
        _$_LearningPathComplete instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'thumbnail': instance.thumbnail,
      'summary': instance.summary,
      'score': instance.score,
      'duration': instance.duration,
      'counts': instance.counts,
      'steps': instance.steps,
      'author': instance.author,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

_$_Author _$$_AuthorFromJson(Map<String, dynamic> json) => _$_Author(
      id: json['id'] as String,
      username: json['username'] as String,
      name: json['name'] as String,
      bio: json['bio'] as String,
      email: json['email'] as String,
      expertise:
          (json['expertise'] as List<dynamic>).map((e) => e as String).toList(),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$_AuthorToJson(_$_Author instance) => <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'name': instance.name,
      'bio': instance.bio,
      'email': instance.email,
      'expertise': instance.expertise,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

_$_Counts _$$_CountsFromJson(Map<String, dynamic> json) => _$_Counts(
      steps: json['steps'] as int,
      likes: json['likes'] as int,
      notLikes: json['notLikes'] as int,
      forks: json['forks'] as int,
    );

Map<String, dynamic> _$$_CountsToJson(_$_Counts instance) => <String, dynamic>{
      'steps': instance.steps,
      'likes': instance.likes,
      'notLikes': instance.notLikes,
      'forks': instance.forks,
    };

_$_LearningPathStep _$$_LearningPathStepFromJson(Map<String, dynamic> json) =>
    _$_LearningPathStep(
      id: json['id'] as String,
      title: json['title'] as String,
      thumbnail: json['thumbnail'] as String,
      summary: json['summary'] as String,
      htmlContent: json['htmlContent'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$_LearningPathStepToJson(_$_LearningPathStep instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'thumbnail': instance.thumbnail,
      'summary': instance.summary,
      'htmlContent': instance.htmlContent,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };
