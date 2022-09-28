import 'dart:async';

import 'package:animations/providers/avatar/avatar_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rive/rive.dart';

class Avatar extends ConsumerStatefulWidget {
  const Avatar({Key? key}) : super(key: key);

  @override
  ConsumerState<Avatar> createState() => _AvatarState();
}

class _AvatarState extends ConsumerState<Avatar> {
  SMINumber? _positionX;
  SMINumber? _positionY;
  SMIBool? _happy;
  SMIBool? _leftEyeClose;

  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(milliseconds: 500),
      () => setState(() {
        _positionX?.value = 0;
        _positionY?.value = 0;
        _happy?.value = false;
        _leftEyeClose?.value = false;
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    _setEyesPosition();
    _setEmotions();
    _setLeftEyeClose();

    return Center(
      child: SizedBox(
        width: 250.w,
        height: 250.h,
        child: RiveAnimation.asset(
          'assets/images/more_than_code.riv',
          fit: BoxFit.contain,
          artboard: 'avatar',
          onInit: _onRiveInit,
        ),
      ),
    );
  }

  void _setLeftEyeClose() {
    bool leftEyeClose = ref.watch(leftEyeCloseProvider);
    _leftEyeClose?.value = leftEyeClose;
  }

  void _setEmotions() {
    AvatarEmotionState state = ref.watch(emotionStateProvider);
    if (state == AvatarEmotionState.HAPPY) {
      _happy?.value = true;
    } else {
      _happy?.value = false;
    }
  }

  void _setEyesPosition() {
    AvatarEyesPositionState state = ref.watch(eyesPositionProviders);
    switch (state) {
      case AvatarEyesPositionState.BOTTOM_CENTER:
        _positionX?.value = 0;
        _positionY?.value = -200;
        break;
      case AvatarEyesPositionState.TOP_RIGHT:
        _positionX?.value = 200;
        _positionY?.value = 200;
        break;
      case AvatarEyesPositionState.TOP_LEFT:
        _positionX?.value = -200;
        _positionY?.value = 200;
        break;
      case AvatarEyesPositionState.CENTER_LEFT:
        _positionX?.value = -200;
        _positionY?.value = 0;
        break;
      case AvatarEyesPositionState.CENTER_RIGHT:
        _positionX?.value = 200;
        _positionY?.value = 0;
        break;
      case AvatarEyesPositionState.BOTTOM_RIGHT:
        _positionX?.value = 200;
        _positionY?.value = -200;
        break;
      case AvatarEyesPositionState.BOTTOM_LEFT:
        _positionX?.value = -200;
        _positionY?.value = -200;
        break;
      case AvatarEyesPositionState.TOP_CENTER:
        _positionX?.value = 0;
        _positionY?.value = 200;
        break;
      case AvatarEyesPositionState.CENTER:
        _positionX?.value = 0;
        _positionY?.value = 0;
        break;
    }
  }

  void _onRiveInit(Artboard artboard) {
    final controller = StateMachineController.fromArtboard(artboard, 'state_machine');
    artboard.addController(controller!);
    _positionX = controller.findInput<double>('positionX') as SMINumber;
    _positionY = controller.findInput<double>('positionY') as SMINumber;
    _happy = controller.findInput<bool>('happy') as SMIBool;
    _leftEyeClose = controller.findInput<bool>('leftEyeClose') as SMIBool;
  }
}
