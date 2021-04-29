import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomSheetPage extends StatelessWidget {
  final Function addTaskCallBack;

  BottomSheetPage(this.addTaskCallBack);

  @override
  Widget build(BuildContext context) {
    final myController = TextEditingController();

    return Container(
      color: Color(0xff757575),
      child: Container(
        height: 250,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(60), topRight: Radius.circular(60)),
          color: Colors.grey[200],
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 25, 0, 0),
          child: Column(
            children: [
              Text(
                'Add New NoteBook',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 20.0,
                    color: Colors.black),
              ),
              SizedBox(
                height: 6.0,
              ),
              Divider(
                height: 1.0,
                thickness: 1.0,
                color: Colors.black.withOpacity(0.12),
              ),
              SizedBox(
                height: 30.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40.0, right: 40.0),
                child: TextFormField(
                  controller: myController,
                  validator: (value) {
                    if (value.isEmpty) {
                      print('fucl');
                    }
                    return null;
                  },
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                    color: Colors.black,
                  ),
                  autofocus: true,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Container(
                width: 300,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(40)),
                child: FlatButton(
                    color: Colors.black,
                    onPressed: () {
                      addTaskCallBack(myController.text);
                      print(myController.text);
                    },
                    child: Text(
                      'Add',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
