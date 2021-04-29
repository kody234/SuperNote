import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RecentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, top: 30),
      child: Column(
        children: [
          Container(
            height: 100,
            width: 500.0,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
          ),
          SizedBox(
            height: 15.0,
          ),
          Container(
            height: 100,
            width: 400.0,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
          ),
          SizedBox(
            height: 15.0,
          ),
          Container(
            height: 100,
            width: 400.0,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
          ),
          SizedBox(
            height: 15.0,
          ),
          Container(
            height: 100,
            width: 400.0,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
          ),
          SizedBox(
            height: 15.0,
          ),
          Container(
            height: 100,
            width: 400.0,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
          ),
        ],
      ),
    );
  }
}
