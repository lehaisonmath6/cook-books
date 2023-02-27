// ignore_for_file: type=lint

import 'package:json_annotation/json_annotation.dart';
import 'package:collection/collection.dart';
import 'dart:convert';

part 'swagger.models.swagger.g.dart';

@JsonSerializable(explicitToJson: true)
class ModelsAuthor {
  ModelsAuthor({
    this.avatar,
    this.id,
    this.name,
  });

  factory ModelsAuthor.fromJson(Map<String, dynamic> json) =>
      _$ModelsAuthorFromJson(json);

  @JsonKey(name: 'avatar')
  final String? avatar;
  @JsonKey(name: 'id')
  final int? id;
  @JsonKey(name: 'name')
  final String? name;
  static const fromJsonFactory = _$ModelsAuthorFromJson;
  static const toJsonFactory = _$ModelsAuthorToJson;
  Map<String, dynamic> toJson() => _$ModelsAuthorToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ModelsAuthor &&
            (identical(other.avatar, avatar) ||
                const DeepCollectionEquality().equals(other.avatar, avatar)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(avatar) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      runtimeType.hashCode;
}

extension $ModelsAuthorExtension on ModelsAuthor {
  ModelsAuthor copyWith({String? avatar, int? id, String? name}) {
    return ModelsAuthor(
        avatar: avatar ?? this.avatar,
        id: id ?? this.id,
        name: name ?? this.name);
  }

  ModelsAuthor copyWithWrapped(
      {Wrapped<String?>? avatar, Wrapped<int?>? id, Wrapped<String?>? name}) {
    return ModelsAuthor(
        avatar: (avatar != null ? avatar.value : this.avatar),
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name));
  }
}

@JsonSerializable(explicitToJson: true)
class ModelsCategory {
  ModelsCategory({
    this.name,
    this.path,
    this.totalLectures,
  });

  factory ModelsCategory.fromJson(Map<String, dynamic> json) =>
      _$ModelsCategoryFromJson(json);

  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'path')
  final String? path;
  @JsonKey(name: 'total_lectures')
  final int? totalLectures;
  static const fromJsonFactory = _$ModelsCategoryFromJson;
  static const toJsonFactory = _$ModelsCategoryToJson;
  Map<String, dynamic> toJson() => _$ModelsCategoryToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ModelsCategory &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.path, path) ||
                const DeepCollectionEquality().equals(other.path, path)) &&
            (identical(other.totalLectures, totalLectures) ||
                const DeepCollectionEquality()
                    .equals(other.totalLectures, totalLectures)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(path) ^
      const DeepCollectionEquality().hash(totalLectures) ^
      runtimeType.hashCode;
}

extension $ModelsCategoryExtension on ModelsCategory {
  ModelsCategory copyWith({String? name, String? path, int? totalLectures}) {
    return ModelsCategory(
        name: name ?? this.name,
        path: path ?? this.path,
        totalLectures: totalLectures ?? this.totalLectures);
  }

  ModelsCategory copyWithWrapped(
      {Wrapped<String?>? name,
      Wrapped<String?>? path,
      Wrapped<int?>? totalLectures}) {
    return ModelsCategory(
        name: (name != null ? name.value : this.name),
        path: (path != null ? path.value : this.path),
        totalLectures:
            (totalLectures != null ? totalLectures.value : this.totalLectures));
  }
}

@JsonSerializable(explicitToJson: true)
class ModelsLecture {
  ModelsLecture({
    this.author,
    this.category,
    this.createTime,
    this.documentUrl,
    this.id,
    this.intro,
    this.thumbUrl,
    this.title,
    this.totalViews,
    this.videoUrl,
  });

  factory ModelsLecture.fromJson(Map<String, dynamic> json) =>
      _$ModelsLectureFromJson(json);

  @JsonKey(name: 'author')
  final ModelsAuthor? author;
  @JsonKey(name: 'category')
  final ModelsCategory? category;
  @JsonKey(name: 'create_time')
  final int? createTime;
  @JsonKey(name: 'document_url')
  final String? documentUrl;
  @JsonKey(name: 'id')
  final int? id;
  @JsonKey(name: 'intro')
  final String? intro;
  @JsonKey(name: 'thumb_url')
  final String? thumbUrl;
  @JsonKey(name: 'title')
  final String? title;
  @JsonKey(name: 'totalViews')
  final int? totalViews;
  @JsonKey(name: 'video_url')
  final String? videoUrl;
  static const fromJsonFactory = _$ModelsLectureFromJson;
  static const toJsonFactory = _$ModelsLectureToJson;
  Map<String, dynamic> toJson() => _$ModelsLectureToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ModelsLecture &&
            (identical(other.author, author) ||
                const DeepCollectionEquality().equals(other.author, author)) &&
            (identical(other.category, category) ||
                const DeepCollectionEquality()
                    .equals(other.category, category)) &&
            (identical(other.createTime, createTime) ||
                const DeepCollectionEquality()
                    .equals(other.createTime, createTime)) &&
            (identical(other.documentUrl, documentUrl) ||
                const DeepCollectionEquality()
                    .equals(other.documentUrl, documentUrl)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.intro, intro) ||
                const DeepCollectionEquality().equals(other.intro, intro)) &&
            (identical(other.thumbUrl, thumbUrl) ||
                const DeepCollectionEquality()
                    .equals(other.thumbUrl, thumbUrl)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.totalViews, totalViews) ||
                const DeepCollectionEquality()
                    .equals(other.totalViews, totalViews)) &&
            (identical(other.videoUrl, videoUrl) ||
                const DeepCollectionEquality()
                    .equals(other.videoUrl, videoUrl)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(author) ^
      const DeepCollectionEquality().hash(category) ^
      const DeepCollectionEquality().hash(createTime) ^
      const DeepCollectionEquality().hash(documentUrl) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(intro) ^
      const DeepCollectionEquality().hash(thumbUrl) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(totalViews) ^
      const DeepCollectionEquality().hash(videoUrl) ^
      runtimeType.hashCode;
}

extension $ModelsLectureExtension on ModelsLecture {
  ModelsLecture copyWith(
      {ModelsAuthor? author,
      ModelsCategory? category,
      int? createTime,
      String? documentUrl,
      int? id,
      String? intro,
      String? thumbUrl,
      String? title,
      int? totalViews,
      String? videoUrl}) {
    return ModelsLecture(
        author: author ?? this.author,
        category: category ?? this.category,
        createTime: createTime ?? this.createTime,
        documentUrl: documentUrl ?? this.documentUrl,
        id: id ?? this.id,
        intro: intro ?? this.intro,
        thumbUrl: thumbUrl ?? this.thumbUrl,
        title: title ?? this.title,
        totalViews: totalViews ?? this.totalViews,
        videoUrl: videoUrl ?? this.videoUrl);
  }

  ModelsLecture copyWithWrapped(
      {Wrapped<ModelsAuthor?>? author,
      Wrapped<ModelsCategory?>? category,
      Wrapped<int?>? createTime,
      Wrapped<String?>? documentUrl,
      Wrapped<int?>? id,
      Wrapped<String?>? intro,
      Wrapped<String?>? thumbUrl,
      Wrapped<String?>? title,
      Wrapped<int?>? totalViews,
      Wrapped<String?>? videoUrl}) {
    return ModelsLecture(
        author: (author != null ? author.value : this.author),
        category: (category != null ? category.value : this.category),
        createTime: (createTime != null ? createTime.value : this.createTime),
        documentUrl:
            (documentUrl != null ? documentUrl.value : this.documentUrl),
        id: (id != null ? id.value : this.id),
        intro: (intro != null ? intro.value : this.intro),
        thumbUrl: (thumbUrl != null ? thumbUrl.value : this.thumbUrl),
        title: (title != null ? title.value : this.title),
        totalViews: (totalViews != null ? totalViews.value : this.totalViews),
        videoUrl: (videoUrl != null ? videoUrl.value : this.videoUrl));
  }
}

// ignore: unused_element
String? _dateToJson(DateTime? date) {
  if (date == null) {
    return null;
  }

  final year = date.year.toString();
  final month = date.month < 10 ? '0${date.month}' : date.month.toString();
  final day = date.day < 10 ? '0${date.day}' : date.day.toString();

  return '$year-$month-$day';
}

class Wrapped<T> {
  final T value;
  const Wrapped.value(this.value);
}
