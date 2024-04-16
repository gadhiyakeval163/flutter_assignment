import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:mytask/task.dart';
import 'package:mytask/task_manager.dart';

class TaskListScreen extends StatefulWidget {
  const TaskListScreen({super.key});

  @override
  _TaskListScreenState createState() => _TaskListScreenState();
}

class _TaskListScreenState extends State<TaskListScreen> {
  final TaskManager _taskManager = TaskManager();
  late List<Task> _tasks;
  DateTime? _selectedDate;

  @override
  void initState() {
    super.initState();
    _initializeTasks();
  }

  Future<void> _initializeTasks() async {
    await _taskManager.initDatabase();
    _tasks = await _taskManager.getTasks();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Task Manager'),
      ),
      body: Column(
        children: [
          _DateFilter(),
          Expanded(child: _TaskList()),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await _navigateToAddTaskScreen(context);
          _initializeTasks();
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget _DateFilter() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            _selectedDate != null
                ? 'Tasks for ${DateFormat('yyyy-MM-dd').format(_selectedDate!)}'
                : 'All Tasks',
          ),
          ElevatedButton(
            onPressed: () async {
              final pickedDate = await showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(2000),
                lastDate: DateTime(2100),
              );
              if (pickedDate != null) {
                setState(() {
                  _selectedDate = pickedDate;
                });
              }
            },
            child: const Text('Select Date'),
          ),
        ],
      ),
    );
  }

  Widget _TaskList() {
    final filteredTasks = _selectedDate != null
        ? _tasks.where((task) => task.date == _selectedDate).toList()
        : _tasks;
    return ListView.builder(
      itemCount: filteredTasks.length,
      itemBuilder: (context, index) {
        final task = filteredTasks[index];
        Color textColor = _getColorForPriority(task.priority);
        return ListTile(
          title: Text(
            task.name,
            style: TextStyle(color: textColor),
          ),
          subtitle: Text(task.description),
          trailing: Checkbox(
            value: task.isCompleted,
            onChanged: (value) async {
              task.isCompleted = value!;
              await _taskManager.updateTask(task);
              setState(() {});
            },
          ),
          onTap: () async {
            await _navigateToEditTaskScreen(context, task);
            _initializeTasks();
          },
          onLongPress: () {
            _showTaskOptions(context, task);
          },
        );
      },
    );
  }

  Color _getColorForPriority(String priority) {
    switch (priority.toLowerCase()) {
      case 'high':
        return Colors.red;
      case 'average':
        return Colors.blue;
      case 'low':
        return Colors.green;
      default:
        return Colors.black;
    }
  }

  Widget _SearchBar() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        onChanged: (query) {
          _searchTasks(query);
        },
        decoration: InputDecoration(
          labelText: 'Search by name',
          prefixIcon: const Icon(Icons.search),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
      ),
    );
  }

  void _searchTasks(String query) {
    setState(() {
      _tasks = _taskManager.searchTasksByName(query);
    });
  }

  Future<void> _navigateToAddTaskScreen(BuildContext context) async {}

  Future<void> _navigateToEditTaskScreen(
      BuildContext context, Task task) async {}

  void _showTaskOptions(BuildContext context, Task task) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: const Icon(Icons.check_circle),
              title: const Text('Complete the Task'),
              onTap: () {
                _completeTask(task);
                Navigator.pop(context);
              },
            ),
          ],
        );
      },
    );
  }

  void _completeTask(Task task) async {
    task.isCompleted = true;
    await _taskManager.updateTask(task);
    setState(() {});
  }
}
