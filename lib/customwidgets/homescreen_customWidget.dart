import 'package:flutter/material.dart';

class MovieBox extends StatelessWidget {
  const MovieBox({Key? key, required this.movieTitle, required this.onTap}) : super(key: key);

  final String movieTitle;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(right: 15),
        height: size.height * 0.08,
        width: size.width * 0.33,
        decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
                image: NetworkImage("https://play-lh.googleusercontent.com/x6e04XkLxys_hZ0ENmupQXMJ6oIoPAp3lU-3H-V2TT7FIDMX56w4Bk0wefurWU2eduQ=s64-rw")
            )
        ),
        alignment: Alignment.bottomCenter,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Text(movieTitle,style: Theme.of(context).textTheme.headline1,textAlign: TextAlign.center,),
        ),
      ),
    );
  }
}

class MovieRow extends StatelessWidget {
  const MovieRow({Key? key, required this.categoryName}) : super(key: key);

  final String categoryName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20,left: 10),
      child: Row(mainAxisAlignment: MainAxisAlignment.center,
        children:  [
          SizedBox(width: 10,),
          Text(categoryName,style: const TextStyle(color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.w600),),
          const Spacer(flex: 12,),
          const Icon(Icons.arrow_forward_ios_sharp, size: 30,

            color: Colors.white,),
          SizedBox(width: 10,),
        ],
      ),
    ) ;
  }
}



