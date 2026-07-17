class NoteModel {
  NoteModel({
      String? id, 
      String? title, 
      String? content, 
      String? createdAt,}){
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
  String? _id;
  String? _title;
  String? _content;
  String? _createdAt;
NoteModel copyWith({  String? id,
  String? title,
  String? content,
  String? createdAt,
}) => NoteModel(  id: id ?? _id,
  title: title ?? _title,
  content: content ?? _content,
  createdAt: createdAt ?? _createdAt,
);
  String? get id => _id;
  String? get title => _title;
  String? get content => _content;
  String? get createdAt => _createdAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['title'] = _title;
    map['content'] = _content;
    map['createdAt'] = _createdAt;
    return map;
  }

}