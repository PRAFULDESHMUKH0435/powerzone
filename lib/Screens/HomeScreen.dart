import 'package:flutter/material.dart';
import 'package:powerzone/AppStyles/AppStyle.dart';

import '../Constants/ExpiryReportRow.dart';
import '../Constants/ReusableDisplayText.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyle.scaffoldbackgroundcolor,
      /// AppBar
      appBar: AppBar(
        title: Text("Dashboard",style:AppStyle.appbartextstyle,),
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.menu_outlined,color:Colors.white,)),
        backgroundColor: AppStyle.appbarcolor,
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.notifications,color: Colors.white,))
        ],
      ),
      ///Bottom Navigation Bar
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home,color: AppStyle.bottomnavbariconcolor,),label:"",tooltip: "Hi"),
          BottomNavigationBarItem(icon: Icon(Icons.people_alt,color: AppStyle.bottomnavbariconcolor),label:""),
          BottomNavigationBarItem(icon: Icon(Icons.calendar_month,color: AppStyle.bottomnavbariconcolor),label:""),
          BottomNavigationBarItem(icon: Icon(Icons.person,color: AppStyle.bottomnavbariconcolor),label:""),
        ],
      ),
      /// Body
      body: Column(
        children: [
          ReusableDisplayText(displayText: 'Upcoming Expiry Text'),
          ExpiryReportRow(),
        ],
      ),
    );
  }
}
