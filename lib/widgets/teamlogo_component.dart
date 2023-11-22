import 'package:bettingapp/utils/dimensions.dart';
import 'package:bettingapp/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class TeamLogo extends StatelessWidget {
  final String teamName;
  final String teamLogo;
  final double leftPadding;
  final double rightPadding;
  final double imgHeight;
  final double imgWidth;
  const TeamLogo({super.key, required this.teamName, required this.teamLogo, required this.leftPadding, required this.rightPadding, required this.imgHeight, required this.imgWidth});

  @override
  Widget build(BuildContext context) {
    return Container(
                padding:EdgeInsets.only(top:Dimensions.height10,
          left: leftPadding, 
          right:rightPadding,
          bottom: Dimensions.height10 ), 
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                          Container(
                            height: imgHeight,
                            width: imgWidth,
                            margin: EdgeInsets.only(
                            left: Dimensions.width15, 
                            right: Dimensions.width15,
                            ),
                            decoration:BoxDecoration(
                              
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image:
                              AssetImage(teamLogo))
                            ),
                          ),
                        
                   TextWidget(teamName, Dimensions.font16,Colors.white, FontWeight.normal,TextAlign.center)
                  ],
                ),
              );
  }
}