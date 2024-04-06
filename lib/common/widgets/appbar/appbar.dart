import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:rent_onway/utils/constants/sizes.dart';
import 'package:rent_onway/utils/device/device_utils.dart';

class ThAppBar extends StatelessWidget  implements PreferredSizeWidget{
  const ThAppBar({
  super.key,
  this.title,
  this.actions,
  this.leadingIcon,
  this.leadingOnPressed,
  this.showBackArrow = true,
  
  });
  final Widget? title;
  final bool showBackArrow;
  final IconData? leadingIcon;
  final List<Widget>? actions;
  final VoidCallback? leadingOnPressed;

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: ThSize.md), 
    child: AppBar(
      automaticallyImplyLeading: false ,
      leading:showBackArrow
       ? IconButton(onPressed: () => Get.back(), icon: const Icon(Iconsax.arrow_left)) 
       : leadingIcon != null ? IconButton(onPressed: leadingOnPressed, icon: Icon(leadingIcon)) :null, 
       title: title,
       actions: actions,
    ),
    );
  }
  
  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(ThDeviceUtils.getAppBarHeight());
  }
