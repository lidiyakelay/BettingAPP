import 'package:bettingapp/pages/betting_page.dart';
import 'package:bettingapp/utils/colors.dart';
import 'package:bettingapp/utils/dimensions.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: AppColors.backgroundColor,
        title: Text('Betting',style: TextStyle(color: AppColors.goldenColor1, fontWeight: FontWeight.bold, fontSize: Dimensions.font26*1.2),),
        
      ),
      body: ListView.builder(
        itemCount: 7,
        itemBuilder: (BuildContext context, int index) {
            return const BettingPage();}),
    );
  }
}