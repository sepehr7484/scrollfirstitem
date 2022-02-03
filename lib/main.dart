import 'dart:math';

import 'package:flutter/material.dart';
import 'list.dart';

void main() {
  return runApp(const MaterialApp(
    home: FirstList(),
    title: 'Scroll firstitem',
    debugShowCheckedModeBanner: false,
  ));
}

class FirstList extends StatefulWidget {
  const FirstList({Key? key}) : super(key: key);

  @override
  _FirstListState createState() => _FirstListState();
}

class _FirstListState extends State<FirstList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView.builder(
            controller: ctrl,
            itemCount: names.length,
            itemBuilder: (context, index) {
              return Container(
                  margin: EdgeInsets.all(10),
                  width: double.infinity,
                  height: 60,
                  decoration: dec(),
                  child: Center(
                    child: Text(
                      names.elementAt(index),
                      style: const TextStyle(color: Colors.white, fontSize: 25),
                    ),
                  ));
            }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ctrl.animateTo(0,
              duration: const Duration(seconds: 1), curve: Curves.easeInOut);
        },
        child: const Icon(Icons.arrow_upward_rounded),
      ),
    );
  }
}

dec() {
  return BoxDecoration(
    color: Colors.primaries[Random().nextInt(Colors.primaries.length)],
    borderRadius: BorderRadius.circular(10),
  );
}
