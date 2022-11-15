import 'package:flutter/material.dart';
import 'package:movies12/customwidgets/getstarted_customwidget.dart';
import 'package:movies12/customwidgets/loanpage_customwidget.dart';
import 'package:movies12/screens/permissionpage.dart';

class PersonalLoans extends StatefulWidget {
  const PersonalLoans({Key? key}) : super(key: key);

  @override
  State<PersonalLoans> createState() => _PersonalLoansState();
}

class _PersonalLoansState extends State<PersonalLoans> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            color: Color(0xff191A32),
            image: DecorationImage(
                image: AssetImage("image/Group 1.png"),fit: BoxFit.fill
            )
        ),
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(flex: 3,),
            Text("Making Personal Loans Better ?",style: Theme.of(context).textTheme.headlineLarge),
            Spacer(flex: 2,),
            CustomBox(titel: "Customized offer", subTitel: "Best-in-market", image: "image/offer 1.png"),
            Spacer(),
            CustomBox(titel: "Hassle-free Process", subTitel: "Minimum Documentation", image: "image/preemium 1.png"),
            Spacer(),
            CustomBox(titel: "Instant Disbursal", subTitel: "In a Few Minutes", image: "image/instant.png"),
            Spacer(),
            Row(mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Spacer(flex: 6,),
                Column(crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text("4.5",style: TextStyle(color: Color(0xffE72626),fontSize: 25,fontWeight: FontWeight.bold),),
                    Text("Playstore Rating",style: Theme.of(context).textTheme.headline2,)
                  ],
                ),
                Spacer(),
              ],
            ),

            Spacer(flex: 5,),
            Custombtn(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return PermissionPage();
              },));
            }, data: "Get Started"),
            Spacer(flex: 2,),
          ],
        ),
      ),
    );

  }
}
