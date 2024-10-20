class TodoModel{
  String? title;
  String? description;
  String? date;

  TodoModel({
    required this.title,
    this.description = 'Read Title You will remember',
    required this.date,
    });
}