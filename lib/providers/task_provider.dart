import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:to_do_inloops/models/task.dart';
import 'package:to_do_inloops/services/local_storage_service.dart';

class TaskProvider with ChangeNotifier {
  List<Task> _tasks = [];

  List<Task> get tasks => _tasks;
  
  // Get completed tasks
  List<Task> get completedTasks => _tasks.where((task) => task.isCompleted).toList();
  
  // Get pending tasks
  List<Task> get pendingTasks => _tasks.where((task) => !task.isCompleted).toList();

  TaskProvider() {
    loadTasks();
  }

  // Load tasks from SharedPreferences
  Future<void> loadTasks() async {
    _tasks = await LocalStorageService.loadTasks();
    log("Tasks : $_tasks");
    notifyListeners();
  }

  // Add a new task
  void addTask(Task task) {
    _tasks.add(task);
    _saveTasks();
  }

  // Update an existing task
  void updateTask(Task oldTask, Task newTask) {
    final index = _tasks.indexOf(oldTask);
    if (index != -1) {
      _tasks[index] = newTask;
      _saveTasks();
    }
  }

  // Toggle task status
  void toggleTaskStatus(Task task) {
    task.isCompleted = !task.isCompleted;
    _saveTasks();
  }

  // Delete task
  void deleteTask(Task task) {
    _tasks.remove(task);
    _saveTasks();
  }
  
  // Clear all completed tasks
  void clearCompletedTasks() {
    _tasks.removeWhere((task) => task.isCompleted);
    _saveTasks();
  }
  
  // Helper method to save tasks and notify listeners
  void _saveTasks() {
    LocalStorageService.saveTasks(_tasks.map((t) => t.toJson()).toList());
    notifyListeners();
  }
}