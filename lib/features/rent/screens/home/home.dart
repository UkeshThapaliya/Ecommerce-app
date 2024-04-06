import 'dart:js';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:rent_onway/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:rent_onway/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:rent_onway/common/widgets/texts/section_heading.dart';
import 'package:rent_onway/features/rent/screens/home/widgets/home_appbar.dart';
import 'package:rent_onway/utils/constants/color.dart';
import 'package:rent_onway/utils/constants/sizes.dart';


class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context){
    return  Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ///-Header
            ThPrimaryHeaderContainer(
              child: Column(
                children: [
                  //--Appbar
                 const ThHomeAppBar(),
                  const SizedBox(height: ThSize.spaceBtwSections),

                  //--SearchBar
                  const ThSearchContainer(text: 'Search in Store'),
                  const SizedBox(height: ThSize.spaceBtwSections),

                  //--Categories
                  Padding(
                    padding: const EdgeInsets.only(left:ThSize.defaultSpace),
                    child: Column(
                      children: [

                        ///-- Heading
                        const ThSectionHeading(title: 'Popular Categories', showActionButton: false),
                        const SizedBox(height: ThSize.spaceBtwItems),


                        /// Categories
                        SizedBox(
                          height: 80,
                          child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: 6,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (_, index) {
                             return Column(
                                children: [
                                  Container(
                                    width: 56,
                                    height: 56,
                                    padding: const EdgeInsets.all(ThSize.sm),
                                    decoration: BoxDecoration(
                                    color: ThColors.white,
                                    borderRadius: BorderRadius.circular(100),
                                    ),
                                    child: Center(
                                      child: Image(image: AssetImage(assetName),fit: BoxFit.cover,color: ThColors.dark),
                                    


                                    ),
                                  ),
                                ],
                              );
                            },
                        ),
                        ),
                         
                    ),

                  
                  )
                ],

              ),

              ),
                  
                ],
              ),
            )
        );
    
  }
}












