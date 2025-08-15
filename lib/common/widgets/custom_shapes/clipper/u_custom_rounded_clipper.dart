import 'package:flutter/material.dart';

class UCustomRoundedEdge extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    ///top to bottom line
    path.lineTo(0, size.height - 40);
    //first curve
    Offset firstpointcurve1 = Offset(40, size.height);
    Offset secondpointcurve1 = Offset(size.width / 2, size.height);

    path.quadraticBezierTo(
      firstpointcurve1.dx,
      firstpointcurve1.dy,
      secondpointcurve1.dx,
      secondpointcurve1.dy,
    );
    ///second curve
     Offset firstpointcurve = Offset(size.width-40, size.height);
    Offset secondpointcurve = Offset(size.width, size.height-40);

    path.quadraticBezierTo(
      firstpointcurve.dx,
      firstpointcurve.dy,
      secondpointcurve.dx,
      secondpointcurve.dy,
    );
  /// bottom to top line curve
   path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
