import 'package:animations/main.dart';
import 'package:camera/camera.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_ml_kit/google_ml_kit.dart';

class CameraView extends StatefulWidget {
  final Function(InputImage inputImage) onImage;
  const CameraView({
    Key? key,
    required this.onImage,
  }) : super(key: key);

  @override
  State<CameraView> createState() => _CameraAppState();
}

class _CameraAppState extends State<CameraView> {
  late CameraController _controller;
  final CameraDescription _camera = cameras[1];

  @override
  void initState() {
    super.initState();
    _controller = CameraController(_camera, ResolutionPreset.low);
    _startLiveFeed();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!_controller.value.isInitialized) {
      return Container();
    }
    return SizedBox(
      height: 250.h,
      child: AspectRatio(
        aspectRatio: 0.7,
        child: ClipRRect(borderRadius: BorderRadius.circular(20), child: CameraPreview(_controller)),
      ),
    );
  }

  Future _startLiveFeed() async {
    _controller.initialize().then((_) {
      if (!mounted) {
        return;
      }
      _controller.startImageStream(_processCameraImage);
      setState(() {});
    });
  }

  Future _processCameraImage(CameraImage image) async {
    final WriteBuffer allBytes = WriteBuffer();
    for (final Plane plane in image.planes) {
      allBytes.putUint8List(plane.bytes);
    }

    final bytes = allBytes.done().buffer.asUint8List();
    final Size imageSize = Size(image.width.toDouble(), image.height.toDouble());
    final imageRotation = InputImageRotationValue.fromRawValue(_camera.sensorOrientation);
    if (imageRotation == null) return;
    final inputImageFormat = InputImageFormatValue.fromRawValue(image.format.raw);
    if (inputImageFormat == null) return;
    final planeData = image.planes.map(
      (Plane plane) {
        return InputImagePlaneMetadata(
          bytesPerRow: plane.bytesPerRow,
          height: plane.height,
          width: plane.width,
        );
      },
    ).toList();

    final inputImageData = InputImageData(
      size: imageSize,
      imageRotation: imageRotation,
      inputImageFormat: inputImageFormat,
      planeData: planeData,
    );

    final inputImage = InputImage.fromBytes(bytes: bytes, inputImageData: inputImageData);
    widget.onImage(inputImage);
  }
}
