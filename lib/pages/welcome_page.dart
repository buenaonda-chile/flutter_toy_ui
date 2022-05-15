import 'package:flutter/material.dart';
import 'package:flutter_trip_ui/widgets/app_large_text.dart';
import 'package:flutter_trip_ui/widgets/app_text.dart';
import 'package:flutter_trip_ui/widgets/responsive_button.dart';

import '../misc/colors.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  List images = ["apc.png", "profile.jpg"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: images.length,
          itemBuilder: (_, index) {
            return Container(
              width: double.maxFinite, //최대너비
              height: double.maxFinite,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("img/" + images[index]),
                      fit: BoxFit.cover)),
              child: Container(
                margin: EdgeInsets.only(top: 150, left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppLargeText(text: "토이프로젝트"),
                        AppText(
                          text: "테스트",
                          size: 30,
                        ),
                        const SizedBox(height: 20,),
                        SizedBox(
                          width: 250,
                          child: AppText(
                            text: "참여자 : 정현수, 우민지, 김지우, 박소은, 박준호, 강광훈",
                            size: 14,
                            color: AppColors.textColor2,
                          ),
                        ),
                        const SizedBox(height: 40,),
                        ResponsiveButton(width: 120,)
                      ],
                    ),
                    Column(
                      children: List.generate(images.length, (indexDots){
                        return Container(
                          margin: EdgeInsets.only(bottom: 2),
                          width: 8,
                          height: index == indexDots? 25 :8,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color:index == indexDots? AppColors.mainColor : AppColors.mainColor.withOpacity(0.3),
                          ),
                        );
                      }),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
