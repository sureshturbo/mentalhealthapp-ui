import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Excerise_tile extends StatefulWidget {
  // final icon;
  // final String excerisename;
  // final int number;
  const Excerise_tile({Key? key,
    // this.excerisename,this.icon,required this.number
  }) : super(key: key);

  @override
  State<Excerise_tile> createState() => _Excerise_tileState();
}

class _Excerise_tileState extends State<Excerise_tile> {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16)
        ),
        child: (
            ListTile(
              leading: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    padding: EdgeInsets.all(10),
                    color: Colors.orange,
                    child: Icon(Icons.favorite,color: Colors.white),
                  )),
              title: Text('Speaking skills'),
              subtitle: Text('15 Excerise'),
            )
        ),
      ),
    );
  }
}
