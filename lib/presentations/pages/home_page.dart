import 'package:animations/core/styles/colors_styles.dart';
import 'package:animations/core/styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> buttons = [
    const Icon(Icons.add),
    const Icon(Icons.favorite),
    const Icon(Icons.star),
    const Icon(Icons.share),
    const Icon(Icons.notifications),
    const Icon(Icons.download),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: kPaddingApp,
          child: Column(
            children: [
              Center(child: Text(widget.title, style: kHeadline4)),
              SizedBox(height: 12.h),
              Expanded(
                child: GridView.builder(
                  itemCount: buttons.length,
                  itemBuilder: ((context, index) => _buildItems(buttons[index])),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 6,
                  ),
                  shrinkWrap: true,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildItems(Widget child) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(
        color: kWhiteColor,
      )),
      child: child,
    );
  }
}
