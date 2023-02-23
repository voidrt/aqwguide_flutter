import 'package:flutter/material.dart';
import 'package:aqwguide/screens/home/custom_text.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: ((context, constraints) {
          return const Center(
            child: CustomText(
              titleString: 'Hello',
            ),
          );
        }),
      ),
    );
  }
}
