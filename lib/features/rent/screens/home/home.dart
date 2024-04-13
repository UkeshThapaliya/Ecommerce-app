
import 'package:flutter/material.dart';
import 'package:rent_onway/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:rent_onway/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:rent_onway/common/widgets/texts/section_heading.dart';
import 'package:rent_onway/features/rent/screens/home/widgets/home_appbar.dart';
import 'package:rent_onway/features/rent/screens/home/widgets/home_categories.dart';
import 'package:rent_onway/features/rent/screens/home/widgets/promo_slider.dart';
import 'package:rent_onway/utils/constants/image_string.dart';
import 'package:rent_onway/utils/constants/sizes.dart';


class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context){
    return  const  Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ///-Header
             ThPrimaryHeaderContainer(
              child: Column(
                children: [
                  //--Appbar
                 ThHomeAppBar(),
                  SizedBox(height: ThSize.spaceBtwSections),

                  //--SearchBar
                  ThSearchContainer(text: 'Search in Store'),
                  SizedBox(height: ThSize.spaceBtwSections),

                  //--Categories
                  Padding(
                    padding: EdgeInsets.only(left:ThSize.defaultSpace),
                    child: Column(
                      children: [

                        ///-- Heading
                        ThSectionHeading(title: 'Popular Categories', showActionButton: false,textColor: Colors.white),
                        SizedBox(height: ThSize.spaceBtwItems),


                        /// Categories
                        ThHomeCategories(),
                      ]  
                    ),

                  
                  )
                ],

              ),

              ),
              
              // Body part
                         
            Padding(
              padding: EdgeInsets.all(ThSize.defaultSpace),
              child: ThPromoSlider(banners: [ThImages.banner1,ThImages.banner2,ThImages.banner3],),
            ),
        
                ],
              ),
            )
        );
    
  }
}
