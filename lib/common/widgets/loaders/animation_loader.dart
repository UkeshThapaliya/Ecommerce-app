import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:rent_onway/utils/constants/color.dart';
import 'package:rent_onway/utils/constants/sizes.dart';

class ThAnimationLoaderWidget extends StatelessWidget{

  //Defalult constructor for ThAnimationLoaderWidget


  //Parameters:
  

  const ThAnimationLoaderWidget({
    super.key,
    required this.text,
    required this.animation,
    this.showAction = false,
    this.actionText,
    this.onActionPressed,
  });
  final String text;
  final String animation;
  final bool showAction;
  final String? actionText;
  final VoidCallback ? onActionPressed;

  @override
  Widget build (BuildContext context){
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.asset(animation, width: MediaQuery.of(context).size.width * 0.8), //lottie animation
          const SizedBox(height: ThSize.defaultSpace),
          Text(
            text,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: ThSize.defaultSpace),
          showAction
          ? SizedBox(
            width: 250,
            child: OutlinedButton(
              onPressed: onActionPressed,
              style: OutlinedButton.styleFrom(backgroundColor: ThColors.dark),
              child: Text(
                actionText!,
                style: Theme.of(context).textTheme.bodyMedium!.apply(color: ThColors.light),

              ),
            ),
          )
          : const SizedBox(),

        ],
      ),
    );
  }
}