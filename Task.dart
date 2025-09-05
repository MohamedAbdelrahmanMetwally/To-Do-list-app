class Task {
  String? _name;
  bool? _isDone;
  Task(this._name, this._isDone);
  void setName(String name) {
    _name = name;
  }

  String getName() {
    return _name!;
  }

  void setIsDone(bool isDone) {
    _isDone = isDone;
  }

  bool getIsDone() {
    return _isDone!;
  }

  void printTask(int index) {
    String sentence = index.toString() + " -" + "\tname : " + _name!+(_isDone!? "\tYou have done it" : "You did not do it yet");
    print(sentence);
  }
}
