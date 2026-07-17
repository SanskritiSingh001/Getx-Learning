class NoteModel {
  String? id;
  String? title;
  String? content;
  String? createdAt;

  NoteModel({
    this.id,
    this.title,
    this.content,
    this.createdAt,
  });

  NoteModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    content = json['content'];
    createdAt = json['createdAt'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'content': content,
      'createdAt': createdAt,
    };
  }
}