import 'package:flutter/material.dart';
import 'package:rent_onway/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:rent_onway/common/widgets/custom_shapes/curved_edge/curved_edge_widget.dart';
import 'package:rent_onway/utils/constants/color.dart';

class ThPrimaryHeaderContainer extends StatelessWidget {
  const ThPrimaryHeaderContainer({
    super.key, required this.child,
  });
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ThCurvedEdgeWidget(
     child:  Container(
     color: ThColors.primary,
     padding: const EdgeInsets.only(bottom: 0),

     child: Stack(
     children: [

      //-- BackGround Custom Shapes
      Positioned(top: -150, right: -250, child: ThCircularContainer(backgroundColor: ThColors.textWhite.withOpacity(0.1),)),
      Positioned(top: 100, right: -300, child: ThCircularContainer(backgroundColor: ThColors.textWhite.withOpacity(0.1),)),
    ]
              
        ),
            ),
    );

  }
}