import 'package:flutter/material.dart';

class CircleWidget extends StatelessWidget {
  final double width;
  final double height;
  final double outerRadius;
  final double innerRadius;
  final Color circleColor;

  const CircleWidget({
    required this.width,
    required this.height,
    required this.outerRadius,
    required this.innerRadius,
    required this.circleColor,
  });

  @override
  Widget build(BuildContext context) {
    return _buildCircle(width, height, outerRadius, innerRadius, circleColor);
  }

  Widget _buildCircle(double width, double height, double outerRadius,
      double innerRadius, Color color) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(outerRadius),
      ),
      child: Center(
        child: Container(
          height: height * 0.45,
          width: width * 0.45,
          decoration: BoxDecoration(
            color: Color(0XFF1a1a1a),
            borderRadius: BorderRadius.circular(innerRadius),
          ),
        ),
      ),
    );
  }
}
