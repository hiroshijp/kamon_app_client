import 'package:flutter/material.dart';

class HelpBtn extends StatelessWidget {
  const HelpBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 10, 10, 0),
      child: GestureDetector(
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(5)),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                spreadRadius: 1.0,
                blurRadius: 10.0,
                offset: Offset(3, 3),
              ),
            ],
          ),
          child: const Icon(
            Icons.question_mark,
            size: 24.0,
          ),
        ),
      ),
    );
  }
}
