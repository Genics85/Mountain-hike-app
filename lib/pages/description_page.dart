import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mountain/widgets/appButton.dart';
import 'package:mountain/widgets/appColor.dart';
import 'package:mountain/widgets/appText.dart';
import 'package:mountain/widgets/appTextBold.dart';

class DescriptionPage extends StatefulWidget {
  const DescriptionPage({Key? key}) : super(key: key);

  @override
  _DescriptionPageState createState() => _DescriptionPageState();
}

class _DescriptionPageState extends State<DescriptionPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Container(
            padding:const EdgeInsets.only(top: 30,left: 20,right: 20),
            alignment: Alignment.topCenter,
            height: MediaQuery.of(context).size.height*0.4,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/mountain2.jpg"),
                  fit: BoxFit.cover),
              color: Colors.blueAccent
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Icon(Icons.menu,color: Colors.white,size: 30,),
                Icon(Icons.more_vert,color: Colors.white,size: 30,)
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 30,left: 20,right: 20),
            margin: EdgeInsets.only(top:MediaQuery.of(context).size.height*0.4-40),
            height: MediaQuery.of(context).size.height*0.6,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40)),
                color: Colors.white
            ),
            child:Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const AppTextBold(text: "Yosemite",size: 30,),

                        const SizedBox(height: 5,),

                        Row(
                          children: const [
                            Icon(Icons.location_pin,color: AppColors.mainColor,),
                            AppText(text: "USA, California",color: AppColors.mainColor,size: 14,)
                          ],
                        ),

                        const SizedBox(height: 5,),

                        Row(
                          children: [
                            Wrap(
                              children:
                                List.generate(5, (index){
                                  int filled=4;

                                  return Icon(index<filled?Icons.star:Icons.star_border,color:index<filled?AppColors.starColor:Colors.grey,);
                                })
                            ),

                            const SizedBox(width: 5,),
                            const AppText(text: "(40)",size: 16,)
                          ],
                        )
                      ],
                    ),
                    AppTextBold(text: '\$250',size: 27,color: AppColors.mainColor,),

                  ],
                ),

                const SizedBox(height: 30,),
                
                const AppTextBold(text: "People",size: 20,),

                const SizedBox(height: 10,),

                const AppText(text: "Number of people in your group",size: 15,color: Colors.grey,),

                const SizedBox(height: 10,),

                Wrap(
                  children: List.generate(5, (index){
                    int selectedIndex=-1;
                    return GestureDetector(

                      onTap: (){
                        setState(() {
                          selectedIndex=index;
                        });
                        debugPrint("index tapped $selectedIndex");
                      },

                      child: Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(right: 10),
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          color: selectedIndex==index?Colors.grey:Colors.grey,
                          borderRadius: BorderRadius.circular(20)
                        ),
                        child: AppText(text: (index+1).toString(),),
                      ),
                    );
                  }),
                ),
                SizedBox(height: 10,),

                AppTextBold(text: "Description",size: 20,),

                SizedBox(height: 10,),

                AppText(text:"You must go for a travel. Travelling helps get rid"
                    "of pressure. Go to the mountains to see the nature",size: 16,),

                SizedBox(height: 5,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey
                        ),
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child: Icon(Icons.favorite_border),
                    ),
                    AppButton()
                  ],
                )
              ],
            ) ,
          )
        ],
      ),
    );
  }
}
