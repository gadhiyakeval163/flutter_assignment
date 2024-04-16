import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'task.dart';

class TaskManager {
  late Database _database;
  final String tableName = 'tasks';
  
  get allTasks => null;

  Future<void> initDatabase() async {
    _database = await openDatabase(
      join(await getDatabasesPath(), 'task_manager.db'),
      onCreate: (db, version) {
        return db.execute(
          "CREATE TABLE $tableName(id INTEGER PRIMARY KEY, name TEXT, description TEXT, date TEXT, time TEXT, priority TEXT, isCompleted INTEGER)",
        );
      },
      version: 1,
    );
  }

  Future<void> insertTask(Task task) async {
    await _database.insert(
      tableName,
      task.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Task fromMap(Map<String, dynamic> map) {
    return Task(
      id: map['id'],
      name: map['name'],
      description: map['description'],
      date: DateTime.parse(map['date']),
      time: TimeOfDay(hour: int.parse(map['hour']), minute: int.parse(map['minute'])),
      priority: map['priority'],
      isCompleted: map['isCompleted'] == 1,
    );
  }

  Future<List<Task>> getTasks() async {
    final List<Map<String, dynamic>> maps = await _database.query(tableName);
    return List.generate(maps.length, (i) {
      return fromMap(maps[i]);
    });
  }

  Future<void> updateTask(Task task) async {
    await _database.update(
      tableName,
      task.toMap(),
      where: "id = ?",
      whereArgs: [task.id],
    );
  }

  Future<void> deleteTask(int id) async {
    await _database.delete(
      tableName,
      where: "id = ?",
      whereArgs: [id],
    );
  }

  List<Task> searchTasksByName(String query) {
  
  List<Task> matchingTasks = [];

  for (Task task in allTasks) {
    if (task.name.toLowerCase().contains(query.toLowerCase())) {
      matchingTasks.add(task);
    }
  }

  return matchingTasks;
}
}
