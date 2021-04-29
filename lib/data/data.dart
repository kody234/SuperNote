//NoteBooks

import 'package:flutter/material.dart';
import 'package:write_on_app/models/current_note.dart';
import 'package:write_on_app/models/notebooks.dart';

final currentnote = Note(noteBooks: [
  NoteBooks(color: Colors.red, topic: 'Personal'),
  NoteBooks(color: Colors.blue, topic: 'Shopping'),
  NoteBooks(color: Colors.yellow, topic: 'Work'),
  NoteBooks(color: Colors.orange, topic: 'To-Do'),
  NoteBooks(color: Colors.green, topic: 'Others')
]);
