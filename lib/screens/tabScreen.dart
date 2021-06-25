import 'package:flutter/material.dart';
import 'package:flutter_floating_bottom_navigation_bar/screens/homeScreen.dart';
import 'package:flutter_floating_bottom_navigation_bar/screens/messagesScreen.dart';
import 'package:flutter_floating_bottom_navigation_bar/screens/profileScreen.dart';
import 'package:flutter_floating_bottom_navigation_bar/widgets/floatingBottomAppBar.dart';

class TabScreen extends StatefulWidget {
  const TabScreen({ Key? key }) : super(key: key);

  @override
  _TabScreenState createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  PageController _pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 23, 23, 23),
      child: Scaffold(
        extendBody: true,
        backgroundColor: Colors.transparent,
        bottomNavigationBar: FloatingBottomAppBar(pageController: _pageController),
        body: _body(),
      )
    );
  }

  Widget _body(){
    return PageView(
      controller: _pageController,
      physics: NeverScrollableScrollPhysics(),
      scrollDirection: Axis.horizontal,
      children: [
        HomeScreen(),
        MessagesScreen(),
        ProfileScreen()
      ],
    ); 
  }
}