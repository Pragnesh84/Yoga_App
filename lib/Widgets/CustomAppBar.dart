import 'package:flutter/material.dart';
import 'package:project/Home1.dart';

class CustomAppBar extends StatelessWidget {


  AnimationController animationController;
  Animation colorsTween, homeTween, yogaTween, iconTween, drawerTween;
  Function()? onPressed;

  CustomAppBar({
    required this.animationController,
    required this.colorsTween,
    required this.homeTween,
    required this.drawerTween,
    required this.yogaTween,
    required this.iconTween,
    required this.onPressed,
  });


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: AnimatedBuilder(
        animation: animationController,
        builder: (context,child)=> AppBar(
          leading: IconButton(
            icon: Icon(
              Icons.dehaze,
              color: drawerTween.value,
            ),
            onPressed: onPressed,
          ),
          backgroundColor: colorsTween.value,
          elevation: 0,
          title: Row(
            children: [
              Text("HOME", style: TextStyle(
                color: homeTween.value,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),),
              Text("YOGA", style: TextStyle(
                color: yogaTween.value,
                fontWeight: FontWeight.bold,
                fontSize: 20,),),
            ],
          ),
          actions: [
            Icon(Icons.notifications, color: iconTween.value,),
            Padding(
              padding:const EdgeInsets.all(10),
              child: CircleAvatar(
                backgroundColor: Colors.grey,
              ),
            )
          ],

        ),
      ),
    );
  }
}
