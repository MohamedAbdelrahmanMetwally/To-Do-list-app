import 'dart:io';
import 'Task.dart';

class Project {
  List<Task> _list = [];

  void addTask() {
    print("Enter the name : ");
    String name = stdin.readLineSync()!;
    print("Enter 1 if you have done it else enter 0");
    String doneInput = stdin.readLineSync()!;
    bool isDone = doneInput == "1";

    Task task = Task(name, isDone);
    _list.add(task);

    print("Task added successfully ✅");
  }

  void showTasks() {
    if (_list.isEmpty) {
      print("You have not added anything yet!");
    } else {
      for (int i = 0; i < _list.length; i++) {
        _list[i].printTask(i);
      }
    }
  }

  void deleteTask(int index) {
    if (index >= 0 && index < _list.length) {
      _list.removeAt(index);
      print("Task removed successfully ❌");
    } else {
      print("Invalid index ❗");
    }
  }

  void markAsDone(int index) {
    if (index >= 0 && index < _list.length) {
      _list[index].setIsDone(true);
      print("Task marked as done ✅");
    } else {
      print("Invalid index ❗");
    }
  }

  void UI() {
    while (true) {
      print("\n======= MENU =======");
      print("1- Add task");
      print("2- Show tasks");
      print("3- Remove task");
      print("4- Mark task as done");
      print("5- Exit");
      print("====================");
      print("Enter the number that you want:");

      int choice = int.tryParse(stdin.readLineSync() ?? "") ?? -1;

      switch (choice) {
        case 1:
          addTask();
          break;
        case 2:
          showTasks();
          break;
        case 3:
          print("Enter the index : ");
          int index = int.parse(stdin.readLineSync()!);
          deleteTask(index);
          break;
        case 4:
          print("Enter the index : ");
          int index = int.parse(stdin.readLineSync()!);
          markAsDone(index);
          break;
        case 5:
          print("Thanks for your time 🙏");
          return;
        default:
          print("Invalid choice ❗");
      }
    }
  }

  Project() {
    UI();
  }
}
