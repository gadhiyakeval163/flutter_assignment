import 'package:flutter/material.dart';

class Task {
  int id;
  String name;
  String description;
  DateTime date;
  TimeOfDay time;
  String priority;
  bool isCompleted;

  Task({
    required this.id,
    required this.name,
    required this.description,
    required this.date,
    required this.time,
    required this.priority,
    this.isCompleted = false,
  });

  Map<String, Object?> toMap() {
  return {
    'id': id,
    'name': name,
    'description': description,
    'date': date.toString(),
    'hour': time.hour, 
    'minute': time.minute, 
    'priority': priority,
    'isCompleted': isCompleted ? 1 : 0, 
  };
}

static Future<List<Task>> fromMap(Map<String, dynamic> map) async {

  List<Task> tasks = [];
  try {
    for (var taskMap in map['tasks']) {
      tasks.add(Task(
        id: taskMap['id'],
        name: taskMap['name'],
        description: taskMap['description'],
        date: DateTime.parse(taskMap['date']),
        time: TimeOfDay(hour: taskMap['hour'], minute: taskMap['minute']),
        priority: taskMap['priority'],
        isCompleted: taskMap['isCompleted'] == 1,
      ));
    }
  } catch (e) {
    
    print('Error while converting map to list of tasks: $e');
  }
  return tasks;
}

}
