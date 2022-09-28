import 'package:animations/core/styles/colors_styles.dart';
import 'package:animations/presentations/widgets/avatar.dart';
import 'package:animations/presentations/widgets/face_detector_view.dart';
import 'package:flutter/material.dart';

class AvatarPage extends StatefulWidget {
  const AvatarPage({Key? key}) : super(key: key);

  @override
  State<AvatarPage> createState() => _AvatarPageState();
}

class _AvatarPageState extends State<AvatarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: kPaddingApp,
          child: Column(
            children: const [
              FaceDetectorView(),
              Expanded(child: Avatar()),
            ],
          ),
        ),
      ),
    );
  }
}
