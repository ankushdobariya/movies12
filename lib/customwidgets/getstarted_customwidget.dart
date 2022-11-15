import 'package:flutter/material.dart';

class Custombtn extends StatelessWidget {
  const Custombtn({Key? key, required this.onPressed, required this.data}) : super(key: key);

  final Function() onPressed;
  final String data;

  @override
  Widget build(BuildContext context) {
    Size size =MediaQuery.of(context).size;
    return SizedBox(
      height: size.height/13,
      width: size.width* 0.8,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: Theme.of(context).cardColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
        onPressed: onPressed , child: Text(data,style: Theme.of(context).textTheme.headline2),),
    );
  }
}