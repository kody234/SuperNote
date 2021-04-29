import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:write_on_app/data/data.dart';
import 'package:write_on_app/models/notebooks.dart';
import 'package:write_on_app/screens/note_screen.dart';

class NoteBookPage extends StatelessWidget {
  _buildRecentOrder(BuildContext context, NoteBooks noteBooks) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => NoteScreen(theNote: noteBooks.topic)));
      },
      child: Container(
        margin: EdgeInsets.all(10),
        width: 110.0,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5.0),
            border: Border.all(color: Colors.grey[200], width: 1.0)),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 10,
                width: 10,
                decoration: BoxDecoration(
                    color: noteBooks.color, shape: BoxShape.circle),
              ),
              SizedBox(
                height: 30,
              ),
              Hero(
                tag: noteBooks.topic,
                child: Text(
                  noteBooks.topic,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15.0,
                      color: Colors.black),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0),
        child: ListView.builder(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: currentnote.noteBooks.length,
            itemBuilder: (BuildContext context, int index) {
              NoteBooks noteBooks = currentnote.noteBooks[index];
              return _buildRecentOrder(context, noteBooks);
            }),
      ),
    );
  }
}
