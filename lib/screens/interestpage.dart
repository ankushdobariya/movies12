import 'package:flutter/material.dart';

import 'package:movies12/customwidgets/getstarted_customwidget.dart';




import 'loanpage.dart';

class IntersetPage extends StatefulWidget {
  const IntersetPage({Key? key}) : super(key: key);

  @override
  State<IntersetPage> createState() => _IntersetPageState();
}

class _IntersetPageState extends State<IntersetPage> {
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        decoration: BoxDecoration(
            color: Theme.of(context).backgroundColor,
            image: DecorationImage(
                image: AssetImage("image/Group 1.png"), fit: BoxFit.fill)),
        child: Column(
          children: [
            Spacer(flex: 5,),
            Text(
              "Choose Your Interest",
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            Spacer(flex: 3,),
            Text(
              "Choose your interests and get the best movie recommendations. don,t worry you can always change it later.",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline1,
            ),
            Spacer(flex: 3,),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: size.height * 0.055,
                  width: size.width * 0.2,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(color: Colors.white,width: 3)
                  ),
                  alignment: Alignment.center,
                  child: Text("Action",style: Theme.of(context).textTheme.headline1,),
                ),
                Container(
                  height: size.height * 0.055,
                  width: size.width * 0.2,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(color: Colors.white,width: 3)
                  ),
                  alignment: Alignment.center,
                  child: Text("Horror",style: Theme.of(context).textTheme.headline1,),
                ),
                Container(
                  height: size.height * 0.055,
                  width: size.width * 0.2,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(color: Colors.white,width: 3)
                  ),
                  alignment: Alignment.center,
                  child: Text("Drama",style: Theme.of(context).textTheme.headline1,),
                ),
                Container(
                  height: size.height * 0.055,
                  width: size.width * 0.25,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(color: Colors.white,width: 3)
                  ),
                  alignment: Alignment.center,
                  child: Text("Comedy",style: Theme.of(context).textTheme.headline1,),
                ),
              ],
            ),
            Spacer(),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: size.height * 0.055,
                  width: size.width * 0.3,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(color: Colors.white,width: 3)
                  ),
                  alignment: Alignment.center,
                  child: Text("Adventure",style: Theme.of(context).textTheme.headline1,),
                ),
                Container(
                  height: size.height * 0.055,
                  width: size.width * 0.3,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(color: Colors.white,width: 3)
                  ),
                  alignment: Alignment.center,
                  child: Text("Thriller",style: Theme.of(context).textTheme.headline1,),
                ),
                Container(
                  height: size.height * 0.055,
                  width: size.width * 0.3,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(color: Colors.white,width: 3)
                  ),
                  alignment: Alignment.center,
                  child: Text("Thriller",style: Theme.of(context).textTheme.headline1,),
                ),

              ],
            ),
            Spacer(),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: size.height * 0.055,
                  width: size.width * 0.3,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(color: Colors.white,width: 3)
                  ),
                  alignment: Alignment.center,
                  child: Text("Romance",style: Theme.of(context).textTheme.headline1,),
                ),
                Container(
                  height: size.height * 0.055,
                  width: size.width * 0.24,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(color: Colors.white,width: 3)
                  ),
                  alignment: Alignment.center,
                  child: Text("Science",style: Theme.of(context).textTheme.headline1,),
                ),
                Container(
                  height: size.height * 0.055,
                  width: size.width * 0.24,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(color: Colors.white,width: 3)
                  ),
                  alignment: Alignment.center,
                  child: Text("History",style: Theme.of(context).textTheme.headline1,),
                ),
                Container(
                  height: size.height * 0.055,
                  width: size.width * 0.2,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(color: Colors.white,width: 3)
                  ),
                  alignment: Alignment.center,

                  child: Text("Music",style: Theme.of(context).textTheme.headline1,),
                ),
              ],
            ),
            Spacer(),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: size.height * 0.055,
                  width: size.width * 0.4,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(color: Colors.white,width: 3)
                  ),
                  alignment: Alignment.center,
                  child: Text("Documentry",style: Theme.of(context).textTheme.headline1,),
                ),
                Container(
                  height: size.height * 0.055,
                  width: size.width * 0.3,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(color: Colors.white,width: 3)
                  ),
                  alignment: Alignment.center,
                  child: Text("Television",style: Theme.of(context).textTheme.headline1,),
                ),
                Container(
                  height: size.height * 0.055,
                  width: size.width * 0.2,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(color: Colors.white,width: 3)
                  ),
                  alignment: Alignment.center,
                  child: Text("Crime",style: Theme.of(context).textTheme.headline1,),
                ),

              ],
            ),
            Spacer(),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: size.height * 0.055,
                  width: size.width * 0.3,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(color: Colors.white,width: 3)
                  ),
                  alignment: Alignment.center,
                  child: Text("Fantasy",style: Theme.of(context).textTheme.headline1,),
                ),
                Container(
                  height: size.height * 0.055,
                  width: size.width * 0.25,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(color: Colors.white,width: 3)
                  ),
                  alignment: Alignment.center,
                  child: Text("History",style: Theme.of(context).textTheme.headline1,),
                ),
                Container(
                  height: size.height * 0.055,
                  width: size.width * 0.3,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(color: Colors.white,width: 3)
                  ),
                  alignment: Alignment.center,
                  child: Text("Televison",style: Theme.of(context).textTheme.headline1,),
                ),

              ],
            ),
            Spacer(),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: size.height * 0.055,
                  width: size.width * 0.35,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(color: Colors.white,width: 3)
                  ),
                  alignment: Alignment.center,
                  child: Text("SuperHeros",style: Theme.of(context).textTheme.headline1,),
                ),
                Container(
                  height: size.height * 0.055,
                  width: size.width * 0.3,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(color: Colors.white,width: 3)
                  ),
                  alignment: Alignment.center,
                  child: Text("Mystery",style: Theme.of(context).textTheme.headline1,),
                ),
                Container(
                  height: size.height * 0.055,
                  width: size.width * 0.25,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(color: Colors.white,width: 3)
                  ),
                  alignment: Alignment.center,
                  child: Text("Anime",style: Theme.of(context).textTheme.headline1,),
                ),

              ],
            ),
            Spacer(),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: size.height * 0.055,
                  width: size.width * 0.3,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(color: Colors.white,width: 3)
                  ),
                  alignment: Alignment.center,
                  child: Text("Animation",style: Theme.of(context).textTheme.headline1,),
                ),
                Container(
                  height: size.height * 0.055,
                  width: size.width * 0.25,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(color: Colors.white,width: 3)
                  ),
                  alignment: Alignment.center,
                  child: Text("Sports",style: Theme.of(context).textTheme.headline1,),
                ),
                Container(
                  height: size.height * 0.055,
                  width: size.width * 0.35,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(color: Colors.white,width: 3)
                  ),
                  alignment: Alignment.center,
                  child: Text("K-Drama",style: Theme.of(context).textTheme.headline1,),
                ),

              ],
            ),
            Spacer(flex: 5,),

            Custombtn(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return PersonalLoans();
              },));
            }, data: "Get Started"),
            Spacer(flex: 5,),
          ],
        ),
      ),
    );
  }
}
