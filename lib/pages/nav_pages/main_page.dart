import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mountain/widgets/appColor.dart';
import 'package:mountain/widgets/appText.dart';
import 'package:mountain/widgets/appTextBold.dart';

class MainPage extends StatefulWidget{
  const MainPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MainPageState();
  }

}



class MainPageState extends State<MainPage> with TickerProviderStateMixin {



  @override
  Widget build(BuildContext context) {

    TabController _tabController=TabController(length: 3, vsync: this);

    return Container(
      margin: const EdgeInsets.only(top: 70,left: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Icon(Icons.menu,size: 30, color: Colors.black54,),
              Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(10),
                  image: const DecorationImage(
                    image: AssetImage("images/sonny.jpg"),
                    fit: BoxFit.cover
                  )
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          const AppTextBold(text: "Discover"),

          const SizedBox(height: 40),

          Container(
            child: TabBar(
                controller: _tabController,
                labelColor: Colors.black54,
                unselectedLabelColor: Colors.grey.withOpacity(.7),
                indicatorColor: AppColors.mainColor,
                indicatorSize: TabBarIndicatorSize.label,
                isScrollable: true,
                tabs:const [
                  Tab(text: "Places",),
                  Tab(text: "Inspirations",),
                  Tab(text: "Emotions")
                ]
            ),
          ),

          // TabBar for places inspiration and Emotions
          Container(
            height: 300,
            width: double.maxFinite,
            child: TabBarView(
              controller: _tabController,
              children: [
                ListView.builder(

                  itemCount:3,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    List <String> img=[
                      "images/mountain.jpeg",
                      "images/mountain1.jpg",
                      "images/mountain2.jpg"
                    ];
                  return Container(
                    margin: const EdgeInsets.only(top: 20,right: 10),
                    width: 200,
                    height: 300,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                            image:AssetImage(img[index]),
                            fit: BoxFit.cover
                        )
                    ),
                  );
                },

                ),
                const Center(
                  child:Text("Inspiration") ,
                ),
                const Center(
                  child:Text("Emotions") ,
                ),

              ],
            ),
          ),
          
          const SizedBox(height: 20,),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              AppTextBold(text: "Explore more",size: 22,),
              AppText(text: "See All",size: 20,)
            ],
          ),
          
          const SizedBox(height: 20,),

          Container(
            alignment: Alignment.center,
            height: 90,
            child: ListView.builder(
                itemCount: 4,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index){
                  List img=[
                    "images/balloning.png",
                    "images/hiking.png",
                    "images/kayaking.png",
                    "images/snorkling.png"
                  ];
                  List label=[
                    "Balloning",
                    "Hiking",
                    "Kayaking",
                    "Snorkling"
                  ];
              return Column(

                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 45),
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            image:AssetImage(img[index])
                        )
                    ),
                  ),
                  
                  AppText(text: label[index],size: 15,)
                ],
              );
            }),
          )


        ],
      ),
    );
  }
}
