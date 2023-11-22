import 'package:bettingapp/utils/colors.dart';
import 'package:bettingapp/utils/dimensions.dart';
import 'package:bettingapp/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class BettingComponentI extends StatelessWidget {
  final String teamNameI;
  final String teamNameII;
  final String leaugeLogo;
  
  const BettingComponentI({super.key, required this.teamNameI, required this.teamNameII, required this.leaugeLogo});

  @override
  Widget build(BuildContext context) {
    return Container(
          height: Dimensions.height45,
          margin: EdgeInsets.only(top:Dimensions.height10,
          left: Dimensions.height10, 
          right: Dimensions.height10,
          bottom: Dimensions.height10/4 ),
          decoration: BoxDecoration(
            color: AppColors.containerColor2,
            borderRadius: BorderRadius.circular(Dimensions.radius5*2)
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(width: Dimensions.height20*5, child: TextWidget(teamNameI, Dimensions.font26,Colors.white, FontWeight.normal,TextAlign.right)),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:8.0),
                child: Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(
                      left: Dimensions.height10/5, 
                      right: Dimensions.height10/5,),
                    padding: EdgeInsets.only(
                            left: Dimensions.height10, 
                            right: Dimensions.height10,
                            ),
                            decoration: BoxDecoration(
                            color: AppColors.containerColor2,
                            borderRadius: BorderRadius.circular(Dimensions.radius5),
                            boxShadow: [
                            BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 1,
                  blurRadius: 2,
                  offset: Offset(0, 1), // changes position of shadow
                            ),
                          ],
                          ),
                          child: Container(
                            width: MediaQuery.of(context).size.width*0.09,
                            margin: EdgeInsets.only(
                            left: Dimensions.height15, 
                            right: Dimensions.height15,
                            ),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image:
                              AssetImage(leaugeLogo))
                            ),
                          ),
                  ),
              ),
             
            SizedBox(width: Dimensions.height20*6,child: TextWidget(teamNameII, Dimensions.font26,Colors.white, FontWeight.normal,TextAlign.left)),
            ],
          ),
        );
  }
}