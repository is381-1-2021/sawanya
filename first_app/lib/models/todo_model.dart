class Todo {
  final int userId;
  final int id;
  final String title;
  bool completed;

  Todo(this.userId, this.id, this.title, this.completed);

  factory Todo.fromJson(
    Map<String, dynamic> json,
  ) {
    return Todo(
      json['userId'] as int,
      json['id'] as int,
      json['title'] as String,
      json['completed'] as bool,
    );
  }
}

class AllTodos {
  final List<Todo> todos;

  AllTodos(this.todos);

  factory AllTodos.fromJson(
    List<dynamic> json,
  ) {
    var x = json
        .map((record) => Todo.fromJson(record))
        .toList(); //ดึงข้อมูลมาทีละล็อค ของเราคือแต่ละrecord

    return AllTodos(x);
  }
}
