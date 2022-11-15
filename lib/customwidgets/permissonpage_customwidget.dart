import 'package:flutter/material.dart';

class CustomBox2 extends StatelessWidget {
  const CustomBox2({Key? key, required this.image, required this.title, required this.subTitle}) : super(key: key);

  final String image;
  final String title;
  final String subTitle;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height / 9,
      width: size.width * 0.95,
      decoration: BoxDecoration(
          color: Color(0xff131430),
          borderRadius: BorderRadius.circular(10)
      ),
      child: Row(mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(width: 20,),
          Image.asset(image,scale: size.height/90,),
          SizedBox(width: 20,),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Text(title,style: Theme.of(context).textTheme.headline2),
              Text(subTitle,style: Theme.of(context).textTheme.headline1),
            ],
          ),

        ],
      ),
    );
  }
}
