import 'package:flutter_riverpod/flutter_riverpod.dart';

enum AvatarEyesPositionState {
  TOP_RIGHT,
  TOP_LEFT,
  CENTER_LEFT,
  CENTER_RIGHT,
  BOTTOM_RIGHT,
  BOTTOM_LEFT,
  TOP_CENTER,
  BOTTOM_CENTER,
  CENTER
}

enum AvatarEmotionState {
  HAPPY,
  NEUTRAL,
  SAD,
}

final eyesPositionProviders = StateProvider<AvatarEyesPositionState>((ref) => AvatarEyesPositionState.CENTER);
final emotionStateProvider = StateProvider<AvatarEmotionState>((ref) => AvatarEmotionState.NEUTRAL);
final leftEyeCloseProvider = StateProvider<bool>((ref) => false);
