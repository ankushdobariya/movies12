import 'package:flutter/material.dart';

class CustomBox3 extends StatefulWidget {
  final String language;

  const CustomBox3({super.key, required this.language});

  @override
  State<CustomBox3> createState() => _CustomBox3State();
}

class _CustomBox3State extends State<CustomBox3> {


  bool checkes =false;



  @override
  Widget build(BuildContext context) {
    Size size =MediaQuery.of(context).size;
    return Container(

      height: size.height*0.09,
      width: size.width * 0.9,
      decoration: BoxDecoration(
          color: Color(0xff131430),
          borderRadius: BorderRadius.circular(10)
      ),
      alignment: Alignment.center,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(widget.language,style: Theme.of(context).textTheme.headline2,),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Transform.scale(
              scale: 1.5,
              child: Checkbox(
                activeColor: Colors.white,
                side: BorderSide(color: Colors.white),
                checkColor: Theme.of(context).cardColor,
                shape: CircleBorder(),
                value: checkes, onChanged: (value) {
                setState(() {
                  checkes=!checkes;
                });
              },),
            ),

          ),

        ],
      ),

    );
  }
}