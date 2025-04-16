import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:to_do_inloops/models/task.dart';

class LocalStorageService {
  static const _taskKey = 'tasks';
  // Saving tasks offline
  static Future<void> saveTasks(List<Map<String, dynamic>> taskList) async {
    final prefs = await SharedPreferences.getInstance();
    final jsonStringList = taskList.map((task) => jsonEncode(task)).toList();
    await prefs.setStringList(_taskKey, jsonStringList);
  }

  // taking tasks from storage
  static Future<List<Task>> loadTasks() async {
    final prefs = await SharedPreferences.getInstance();
    List<Task> tasks=[];
    final jsonStringList = prefs.getStringList(_taskKey) ?? [];
    for(String i in jsonStringList){
      tasks.add(Task.fromJson(jsonDecode(i)));
    }
       return tasks;
  }
}