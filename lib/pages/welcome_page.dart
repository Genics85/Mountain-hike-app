import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mountain/widgets/appButton.dart';
import 'package:mountain/widgets/appColor.dart';
import 'package:mountain/widgets/appText.dart';
import 'package:mountain/widgets/appTextBold.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  List img=[
    "welcome-one.png",
    "welcome-two.png",
    "welcome-three.png"
  ];
  List <String> txt=[
    "Mountain hikes gives you an incredible sense of freedom and accomplishment",
    "Hiking is the only way to visualized your problems and overcomes it",
    "Hiking has been proven to work scientifically and help everyone to get better"
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: img.length,
          itemBuilder: (_,index){
            return Container(
              width: double.maxFinite,
              height: double.maxFinite,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/"+img[index]),
                   fit: BoxFit.cover,
                )
              ),
              child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top:70,left:15),
                    width: 250,
                    child:   Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const AppTextBold(size:30,text: "Trips"),
                        const SizedBox(height: 15,),
                        const AppText(size:30,text: "Mountain"),
                        const SizedBox(height: 7,),
                        AppText(size:18,
                            color: AppColors.textColor2,
                            text: txt[index] ),
                        SizedBox(height: 50,),
                        AppButton(width: 120,)

                      ],
                    ),
                  ),

                  Container(

                    margin: EdgeInsets.only(top:70, right: 15),
                    child: Column(
                        children: List.generate(3, (Notisindex){
                          return Container(
                            margin: EdgeInsets.only(bottom: 5,),
                            width: 7,
                            height:index==Notisindex?25:7,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(11),
                              color:index==Notisindex?AppColors.mainColor:AppColors.mainColor.withAlpha(90)
                            ),
                          );
                        })
                    ) ,
                  )
                ],
              ),
            );
      }),
    );
  }
}
