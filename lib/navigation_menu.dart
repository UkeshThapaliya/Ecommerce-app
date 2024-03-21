import 'package:flutter/material.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: NavigatorBar(
        destination:[
          Container(color: Colors.green,),
          Container(color: Colors.blue,)
          Container(color: Colors.deepPurple,)
          Container(color: Colors.orange,)
 
        ],
      ),
    );
  }
}

class NavigatorBar {
  const NavigatorBar();
}