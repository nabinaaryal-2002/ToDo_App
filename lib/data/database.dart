import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase{

  List toDoList =[];
  final _myBox = Hive.box('mybox');


  void createInitalData(){
    toDoList = [
      ['Practice Code', false],
      ['Do Assignment', false],
    ];
  }

  void loadData(){
    toDoList = _myBox.get('TODOLIST');
  }

  void updateDataBase(){
    _myBox.put('TODOLIST', toDoList);
  }

}