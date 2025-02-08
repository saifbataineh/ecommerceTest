import 'package:ecommerce/common/widgets/custom_shpaes/curved_edges/curved_edges.dart';
import 'package:flutter/cupertino.dart';

class CurvedEdgesWidget extends StatelessWidget {
  const CurvedEdgesWidget({
    super.key, required this.child,
  });
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: TCustomCurvedEdges(),
      child: child
    );
  }
}
