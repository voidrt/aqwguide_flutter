import 'package:flutter/material.dart';
import 'package:travel_seila/screens/home/widgets/text_widgets/label_text.dart';
import 'package:travel_seila/screens/home/widgets/text_widgets/plain_text.dart';
import 'package:travel_seila/themes/colors.dart';
import 'package:travel_seila/themes/paddings.dart';

class UnorderedList extends StatelessWidget {
  const UnorderedList({
    Key? key,
    required this.title,
    required this.paragraphs,
  }) : super(key: key);

  final String title;
  final List<String> paragraphs;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InnerLabelText(titleString: title),
        const SizedBox(
          height: PaddingMeasure.p,
        ),
        ...List.generate(
          paragraphs.length,
          (index) {
            return ListTile(
              contentPadding: const EdgeInsets.symmetric(
                vertical: PaddingMeasure.pp,
              ),
              enabled: false,
              enableFeedback: false,
              leading: const Icon(
                Icons.square,
                size: 7,
                color: AppColors.textWhite,
              ),
              horizontalTitleGap: PaddingMeasure.pp - 20,
              title: PlainText(
                string: paragraphs[index],
                isInParagraph: true,
              ),
            );
          },
        ),
      ],
    );
  }
}
