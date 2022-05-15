import 'package:flutter/material.dart';
import 'package:flutter_trip_ui/misc/colors.dart';
import 'package:flutter_trip_ui/widgets/app_buttons.dart';
import 'package:flutter_trip_ui/widgets/app_large_text.dart';
import 'package:flutter_trip_ui/widgets/app_text.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int gottenStars = 3;
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: [
            Positioned(
                left: 0,
                right: 0,
                child: Container(
                  width: double.maxFinite,
                  height: 350,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("img/준호.jpeg"), fit: BoxFit.cover),
                  ),
                )),
            Positioned(
                left: 20,
                top: 40,
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.menu),
                        color: Colors.white),
                  ],
                )),
            Positioned(
                top: 320,
                child: Container(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
                  width: MediaQuery.of(context).size.width,
                  height: 500,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      )),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppLargeText(text: "준호 이미지", color: Colors.black.withOpacity(0.8),),
                          AppLargeText(text: "\₩ 40000", color: AppColors.mainColor,)
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(children: [
                        Icon(Icons.location_on, color: AppColors.mainColor,),
                        SizedBox(width: 5,),
                        AppText(text: "경기도 화성시 동탄", color: AppColors.textColor1,size: 15,)
                      ],),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Wrap(
                            children: List.generate(5, (index){
                              return Icon(Icons.star, color: index < gottenStars  ? AppColors.starColor:AppColors.textColor2); //별 색칠하기
                            }),
                          ),
                          SizedBox(width: 10,),
                          AppText(text: "(4.0)", color: AppColors.textColor2,size: 15,)
                        ],
                      ),
                      SizedBox(height: 25,),
                      AppLargeText(text: "People", color: Colors.black.withOpacity(0.8),size: 20,),
                      SizedBox(height: 10,),
                      AppText(text: "Number of people in your group",color: AppColors.mainTextColor, size: 15,),
                      Wrap(
                        children: List.generate(5, (index) {
                          return InkWell(
                            onTap: (){
                              setState(() {
                                selectedIndex=index;
                              });
                            },
                            child: Container(
                              margin: const EdgeInsets.only(right: 10),
                              child: AppButtons(size: 50,
                                  color: selectedIndex==index?Colors.white:Colors.black,
                                  backgroundColor: selectedIndex==index?Colors.black:Colors.grey.withOpacity(0.2),
                                  borderColor: selectedIndex==index?Colors.black:Colors.grey.withOpacity(0.2),
                                  text: (index+1).toString(),
                              ),
                            ),
                          );
                        }),
                      ),
                      SizedBox(height: 20,),
                      AppLargeText(text: "Description", color: Colors.black.withOpacity(0.8),size: 20,),
                      SizedBox(height: 10,),
                      AppText(text: "강의에 대한 정보를 입력해주세요.",color: AppColors.mainTextColor, size: 15,),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
