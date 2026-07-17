class NoteModel {
  NoteModel({
    required String id,
    required String title,
    required String content,
    required String createdAt,
  }) {
    _id = id;
    _title = title;
    _content = content;
    _createdAt = createdAt;
  }

  NoteModel.fromJson(dynamic json) {
    _id = json['id'];
    _title = json['title'];
    _content = json['content'];
    _createdAt = json['createdAt'];
  }

  late String _id;
  late String _title;
  late String _content;
  late String _createdAt;

  NoteModel copyWith({
    String? id,
    String? title,
    String? content,
    String? createdAt,
  }) =>
      NoteModel(
        id: id ?? _id,
        title: title ?? _title,
        content: content ?? _content,
        createdAt: createdAt ?? _createdAt,
      );

  String get id => _id;
  String get title => _title;
  String get content => _content;
  String get createdAt => _createdAt;

  Map<String, dynamic> toJson() {
    return {
      'id': _id,
      'title': _title,
      'content': _content,
      'createdAt': _createdAt,
    };
  }
}