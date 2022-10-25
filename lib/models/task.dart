class task{

  task( {required this.name,this.isDone=false});
  String name;
  bool isDone;

  void toggleDone(){
    isDone = !isDone;
  }
}