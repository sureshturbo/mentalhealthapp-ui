import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Emoction_face extends StatelessWidget {
  final String Emoctionface;

  const Emoction_face({Key? key,required this.Emoctionface}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue[600],
        borderRadius: BorderRadius.circular(12)
      ),
      padding: EdgeInsets.all(12),
      child: Text(Emoctionface,
        style: TextStyle(fontSize: 20),)
    );
  }
}
