import 'package:animations/core/styles/theme.dart';
import 'package:animations/presentations/pages/avatar_page.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

List<CameraDescription> cameras = <CameraDescription>[];

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  cameras = await availableCameras();
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        minTextAdapt: true,
        splitScreenMode: true,
        designSize: const Size(360, 640),
        builder: (context, child) {
          return MaterialApp(
            title: 'Animations',
            theme: lightTheme,
            home: const AvatarPage(),
          );
        });
  }
}
