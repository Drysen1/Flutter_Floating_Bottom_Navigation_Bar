import 'package:flutter/material.dart';

class FloatingBottomAppBar extends StatefulWidget {
  final PageController pageController;
  const FloatingBottomAppBar({ Key? key, required this.pageController }) : super(key: key);

  @override
  _FloatingBottomAppBarState createState() => _FloatingBottomAppBarState();
}

class _FloatingBottomAppBarState extends State<FloatingBottomAppBar> {
  int _currentPage = 0;

  
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      elevation: 0,
      color: Colors.transparent,
      child: Container(
        padding:EdgeInsets.fromLTRB(0, 0, 0, 20), 
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _roundedAppBar()
          ],
        )
      )
    );
  }

  Widget _roundedAppBar(){
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.white.withOpacity(0.1),
      ),
      height: 60,
      width: 340,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _navbarItem(0, Icons.home_max),
          _navbarItem(1, Icons.messenger_outline_rounded),
          _navbarItem(2, Icons.person)
        ],
      )
    );
  }

  Widget _navbarItem(int pageIndex, IconData icon){
    return IconButton(
      icon: Icon(
        icon, 
        color: _currentPage == pageIndex ? Color.fromARGB(255, 195, 165, 89) : Colors.white70,
        size: 32), 
      onPressed: () { 
        setState(() {
          print(pageIndex);
          _currentPage = pageIndex;
          this.widget.pageController.jumpToPage(_currentPage);
        });
      }
    );
  }
}