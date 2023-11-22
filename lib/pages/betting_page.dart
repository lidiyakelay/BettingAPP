import 'package:bettingapp/utils/colors.dart';
import 'package:bettingapp/utils/dimensions.dart';
import 'package:bettingapp/widgets/betting_component.dart';
import 'package:bettingapp/widgets/custom_container.dart';
import 'package:bettingapp/widgets/teamlogo_component.dart';
import 'package:bettingapp/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class BettingPage extends StatefulWidget {
  const BettingPage({super.key});

  @override
  State<BettingPage> createState() => _BettingPageState();
}

class _BettingPageState extends State<BettingPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const BettingComponentI(teamNameI: 'Bolivia', teamNameII:'Liga De Futb...', leaugeLogo: 'assets/images/flag.png'),
         Container(
          height: Dimensions.height45*2.5,
          margin: EdgeInsets.only(top:Dimensions.height10/4,
          left: Dimensions.height10, 
          right: Dimensions.height10,
          bottom: Dimensions.height10 ),
          decoration: BoxDecoration(
            color: AppColors.containerColor2,
            borderRadius: BorderRadius.circular(Dimensions.radius5*2)
          ),
          child:Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TeamLogo(teamName: 'Club Bolivia', teamLogo: 'assets/images/united.png',
               leftPadding: MediaQuery.of(context).size.width/30, rightPadding: MediaQuery.of(context).size.width/30, 
               imgHeight: Dimensions.height10*6, imgWidth: Dimensions.height10*6),
              Container(
                 padding:EdgeInsets.only(top:Dimensions.height10/2,
                  bottom: Dimensions.height10 ), 
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Row(
                      children: [
                        
                      CustomContainer(dataOne: 'Win', dataTwo: '+1.36'),
                      const CustomContainer(dataOne: 'odd', dataTwo: '1.36'),
                      const CustomContainer(dataOne: 'EFF', dataTwo: '75%'),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextWidget('2', Dimensions.font16,AppColors.redColor, FontWeight.bold,TextAlign.center),
                        SizedBox(width:Dimensions.height20*2.6,child: TextWidget(':', Dimensions.font16,AppColors.redColor, FontWeight.bold,TextAlign.center)),
                        TextWidget('30', Dimensions.font16,AppColors.redColor, FontWeight.bold,TextAlign.center),
                      ],
                    )
                  ],
                ),
              ),
                TeamLogo(teamName: 'Club Bolivia', teamLogo: 'assets/images/kisspng-sevilla.png',
               leftPadding: MediaQuery.of(context).size.width/30, rightPadding: MediaQuery.of(context).size.width/30, 
               imgHeight: Dimensions.height10*6, imgWidth: Dimensions.height10*5),
            ],
          ) ,
        ),
      ],
    );
  }
}