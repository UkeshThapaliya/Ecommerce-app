import 'package:flutter/material.dart';
import 'package:rent_onway/common/widgets/custom_shapes/curved_edge/curved_edge.dart';

class ThCurvedEdgeWidget extends StatelessWidget {
  const ThCurvedEdgeWidget({
    super.key, this.child
  });
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: ThCustomCurvedEdge(),
      child: child,
    );
  }
}