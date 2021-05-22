import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todoeyflutter/modals/Task_Data.dart';
import 'package:provider/provider.dart';

class AddTasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String addValueText;

    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
        height: 500,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20))
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text("Add Task", style: TextStyle(fontSize: 30, color: Colors.lightBlueAccent),textAlign: TextAlign.center,),
            TextField(
              textAlign: TextAlign.center,
              onChanged: (value){
                addValueText=value;
              },
              autofocus: true,
              style: TextStyle(fontSize: 30),
              decoration: InputDecoration(
                //enabled: true,
                //enabledBorder: ,
                contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
              ),
            ),
            SizedBox(height: 10,),
            FlatButton(onPressed: (){
              Provider.of<TaskData>(context, listen: false).addToList(addValueText);
              Navigator.pop(context);
              },
              child: Text("Add", style: TextStyle(color: Colors.white),),
              color: Colors.lightBlueAccent,),
          ],
        ),
      ),
    );
  }
}
