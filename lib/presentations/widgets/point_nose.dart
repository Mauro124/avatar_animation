import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PointNose extends StatefulWidget {
  final double pointX;
  final double pointY;

  const PointNose({Key? key, required this.pointX, required this.pointY}) : super(key: key);

  @override
  State<PointNose> createState() => _PointNoseState();
}

class _PointNoseState extends State<PointNose> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: widget.pointY - 20,
      right: widget.pointX - 80,
      child: Column(
        children: [
          Container(
            height: 6.r,
            width: 6.r,
            decoration: const BoxDecoration(
              color: Colors.green,
            ),
          ),
          Text(
            " POINT: X ${widget.pointX} Y: ${widget.pointY}",
            style: TextStyle(fontSize: 8.sm),
          ),
        ],
      ),
    );
  }
}
