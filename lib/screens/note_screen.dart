import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NoteScreen extends StatefulWidget {
  final String theNote;

  const NoteScreen({Key key, this.theNote}) : super(key: key);
  @override
  _NoteScreenState createState() => _NoteScreenState();
}

class _NoteScreenState extends State<NoteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Column(
        children: [
          Container(
            height: 100.0,
            color: Colors.white,
            child: Column(
              children: [
                SizedBox(
                  height: 60.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 100.0),
                      child: Icon(
                        Icons.close_rounded,
                        color: Colors.black.withOpacity(0.6),
                        size: 25.0,
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Hero(
                            tag: widget.theNote,
                            child: Text(
                              widget.theNote,
                              style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ),
                          DropdownButton(
                            items: null,
                            onChanged: null,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 100),
                      child: Icon(
                        Icons.more_horiz,
                        color: Colors.black.withOpacity(0.6),
                        size: 25.0,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 30.0, left: 30.0),
            child: TextFormField(
              style: TextStyle(
                  fontSize: 27.0,
                  fontWeight: FontWeight.w600,
                  color: Colors.black),
              maxLengthEnforced: true,
              maxLength: 100,
              maxLines: 1,
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  hintText: 'Title',
                  hintStyle: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.w600,
                      color: Colors.black)),
            ),
          ),
          TextFormField()
        ],
      ),
    );
  }
}
