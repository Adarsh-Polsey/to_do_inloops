class Task {
  String title;
  String description;
  bool isCompleted;

  Task({
    required this.title, 
    this.description = '', 
    this.isCompleted = false
  });

  // toJson
  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'description': description,
      'isCompleted': isCompleted,
    };
  }

  // fromJson
  factory Task.fromJson(Map<String, dynamic> json) {
    return Task(
      title: json['title'],
      description: json['description'] ?? '',
      isCompleted: json['isCompleted'] ?? false,
    );
  }
}