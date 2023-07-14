import 'package:flutter/material.dart';
import 'package:my_new_app/util/button.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;


   DialogBox({
    super.key,
    required this.controller,
    required this.onSave,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.green[300],
      content: Container(
        height: 120,
        child: Column(
          children:[
          TextField(
            controller: controller,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Add a new task"
            ),
          ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Button(text: 'Save', onPressed: onSave),
                const SizedBox(width: 14,),
                Button(text: "Cancel", onPressed: onCancel),
              ],
            )
        ]),

      ),


    );
  }
}
