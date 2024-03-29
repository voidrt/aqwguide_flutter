import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:travel_seila/widgets/scaffold_custom/scaffold_custom.dart';
import 'package:travel_seila/widgets/text_widgets/label_text.dart';
import 'package:travel_seila/widgets/text_widgets/plain_text.dart';

class ErrorPageWidget extends ConsumerWidget {
  const ErrorPageWidget({
    Key? key,
    required this.error,
    required this.stackTrace,
  }) : super(key: key);

  final String error;
  final StackTrace stackTrace;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return LayoutBuilder(
      builder: (context, constraints) => ScaffoldWithSideMenu(
        constraints: constraints,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const LabelText(
                string:
                    'An error has occured with our API, please check in later',
              ),
              PlainText(
                isInParagraph: false,
                string: 'Error: $error',
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 50,
                  horizontal: 100,
                ),
                child: PlainText(
                  string: stackTrace.toString(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
