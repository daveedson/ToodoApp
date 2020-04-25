class Task {
  final String name;
  bool isDone;

  Task({this.name, this.isDone = false});

  //function to toogle the isDone Property to true or false
  void toggelDone() {
    isDone = !isDone;
  }
}
