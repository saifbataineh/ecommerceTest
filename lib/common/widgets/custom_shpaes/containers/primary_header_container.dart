import 'package:ecommerce/common/widgets/custom_shpaes/containers/circular_container.dart';
import 'package:ecommerce/common/widgets/custom_shpaes/curved_edges/curved_edges_widget.dart';
import 'package:ecommerce/utils/contants/colors.dart';
import 'package:flutter/cupertino.dart';

class PrimaryHeaderContainer extends StatelessWidget {
  const PrimaryHeaderContainer({
    super.key,
    required this.child,
  });
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return CurvedEdgesWidget(
      child: Container(
        color: TColors.primary,
        padding: EdgeInsets.zero,
        height: 400,
        child: Stack(
          children: [
            Positioned(
              top: -150,
              right: -250,
              child: TCircularContainer(
                backgroundColor: TColors.textWhite.withValues(alpha: 0.1),
              ),
            ),
            Positioned(
              top: 100,
              right: -300,
              child: TCircularContainer(
                backgroundColor:TColors.textWhite.withValues(alpha: 0.1),
              ),
            ),
            child
          ],
        ),
      ),
    );
  }
}
