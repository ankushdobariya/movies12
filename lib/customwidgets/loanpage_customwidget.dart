
import 'package:flutter/material.dart';

class CustomBox extends StatelessWidget {
  const CustomBox({Key? key, required this.titel, required this.subTitel, required this.image}) : super(key: key);

  final String titel;
  final String subTitel;
  final String image;

  @override
  Widget build(BuildContext context) {
    Size size =MediaQuery.of(context).size;
    return Container(
      height: size.height/ 9,
      width: size.width* 0.9,
      decoration: BoxDecoration(
          color: Color(0xff131430),
          borderRadius: BorderRadius.circular(10)
      ),
      child: Row(mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            width: size.width * 0.05,
          ),
          Image.asset(image,scale: size.height/80,),
          SizedBox(
            width: size.width * 0.07,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(titel,style: Theme.of(context).textTheme.headline2),
              Text(subTitel,style: Theme.of(context).textTheme.headline1),
            ],
          ),
          SizedBox()
        ],
      ),
    );
  }
}
