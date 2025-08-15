import 'package:flutter/material.dart';
import 'package:my_app/common/widgets/custom_shapes/clipper/u_custom_rounded_clipper.dart';

class URoundedEdgesContainer extends StatelessWidget {
  const URoundedEdgesContainer({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return ClipPath(
    clipper: UCustomRoundedEdge(),
    child: child,
    );
  }
}
