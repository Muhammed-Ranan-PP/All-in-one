import 'package:mixed/model/student_model.dart';
import 'package:hive_flutter/hive_flutter.dart';
class Service {
  final Box<Student>studentBox=Hive.box<Student>("std");
  Future<void>save(Student stdd)async{
    await studentBox.add(stdd);
  }
  List<Student>get(){
    return studentBox.values.toList();
  }
  Future<void>update(int index, Student stdd )async{
       await studentBox.put(index,stdd);
  }
  Future<void>delete(int index)async{
    await studentBox.deleteAt(index);
  }
}