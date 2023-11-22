import 'package:bettingapp/utils/colors.dart';
import 'package:bettingapp/utils/dimensions.dart';
import 'package:bettingapp/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final String dataOne;
  final String dataTwo;
  const CustomContainer({super.key, required this.dataOne, required this.dataTwo});

  @override
  Widget build(BuildContext context) {
    return      Container(
                        margin: EdgeInsets.only(top:Dimensions.height10/2,right: Dimensions.height10/5),
                          width: MediaQuery.of(context).size.width*0.1,
                          height: MediaQuery.of(context).size.width*0.12,
                          decoration: BoxDecoration(
                          color: AppColors.goldenColor1,
                          borderRadius: BorderRadius.circular(Dimensions.radius5*2),
                          boxShadow: [
                          BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 1,
                blurRadius: 2,
                offset: const Offset(0, 1), // changes position of shadow
                          ),
                        ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            TextWidget(dataOne, Dimensions.font26,Colors.black, FontWeight.bold,TextAlign.center),
                            TextWidget(dataTwo, Dimensions.font26,Colors.black, FontWeight.bold,TextAlign.center),
                          ],
                        ),
                        );
  }
}