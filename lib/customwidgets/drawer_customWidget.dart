import 'package:flutter/material.dart';

class DrawerBox extends StatelessWidget {
  const DrawerBox({Key? key, required this.text, required this.image}) : super(key: key);

 final String text;
 final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 10),
      child: ListTile(
        leading: SizedBox(
          height: 30,
          width: 27,

          child: Image.asset(image),
        ),
        title:  Text(text, style: TextStyle(color: Colors.white, fontSize: 25),),
      ),
    );
  }
}
