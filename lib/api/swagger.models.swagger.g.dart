// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'swagger.models.swagger.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ModelsAuthor _$ModelsAuthorFromJson(Map<String, dynamic> json) => ModelsAuthor(
      avatar: json['avatar'] as String?,
      id: json['id'] as int?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$ModelsAuthorToJson(ModelsAuthor instance) =>
    <String, dynamic>{
      'avatar': instance.avatar,
      'id': instance.id,
      'name': instance.name,
    };

ModelsCategory _$ModelsCategoryFromJson(Map<String, dynamic> json) =>
    ModelsCategory(
      name: json['name'] as String?,
      path: json['path'] as String?,
      totalLectures: json['total_lectures'] as int?,
    );

Map<String, dynamic> _$ModelsCategoryToJson(ModelsCategory instance) =>
    <String, dynamic>{
      'name': instance.name,
      'path': instance.path,
      'total_lectures': instance.totalLectures,
    };

ModelsLecture _$ModelsLectureFromJson(Map<String, dynamic> json) =>
    ModelsLecture(
      author: json['author'] == null
          ? null
          : ModelsAuthor.fromJson(json['author'] as Map<String, dynamic>),
      category: json['category'] == null
          ? null
          : ModelsCategory.fromJson(json['category'] as Map<String, dynamic>),
      createTime: json['create_time'] as int?,
      documentUrl: json['document_url'] as String?,
      id: json['id'] as int?,
      intro: json['intro'] as String?,
      thumbUrl: json['thumb_url'] as String?,
      title: json['title'] as String?,
      totalViews: json['totalViews'] as int?,
      videoUrl: json['video_url'] as String?,
    );

Map<String, dynamic> _$ModelsLectureToJson(ModelsLecture instance) =>
    <String, dynamic>{
      'author': instance.author?.toJson(),
      'category': instance.category?.toJson(),
      'create_time': instance.createTime,
      'document_url': instance.documentUrl,
      'id': instance.id,
      'intro': instance.intro,
      'thumb_url': instance.thumbUrl,
      'title': instance.title,
      'totalViews': instance.totalViews,
      'video_url': instance.videoUrl,
    };
