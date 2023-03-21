import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:travel_seila/core/providers/page_provider/page_info_provider.dart';
import 'package:travel_seila/models/page_info_model.dart';
import 'package:travel_seila/general_widgets/error_page/error_page.dart';
import 'package:travel_seila/general_widgets/loading_widget/loading_widget.dart';
import 'package:travel_seila/general_widgets/scaffold_custom/scaffold_custom.dart';
import 'package:travel_seila/general_widgets/expanding_text/expanding_text_widget.dart';
import 'package:travel_seila/general_widgets/generic_page_layout/generic_page_layout.dart';

class NewPlayerScreen extends ConsumerWidget {
  const NewPlayerScreen({Key? key}) : super(key: key);

  final String newPlayerBackgroundImage = 'fantasy 1.png';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<PageModel> pageInfo = ref.watch(
      guidePageModelProvider('new-player'),
    );

    return pageInfo.when(
      data: (page) {
        final String pageTitle = page.title;
        final List<PageTopic> topics = page.topics;

        return LayoutBuilder(
          builder: (context, constraints) {
            return ScaffoldWithSideMenu(
              constraints: constraints,
              expandedFlex: 4,
              backgroundImage: newPlayerBackgroundImage,
              backgroundImageBlur: 5,
              pageIndex: 1,
              child: GenericPageLayout(
                title: pageTitle,
                constraints: constraints,
                expandingParagraphs: [
                  ...List.generate(
                    topics.length,
                    (index) {
                      final topic = topics[index];
                      return ExpandingTextWidget(
                        expandingTextTitle: topic.title,
                        subtopics: topic.subtopicsList,
                      );
                    },
                  ),
                ],
              ),
            );
          },
        );
      },
      error: (error, stackTrace) => ErrorPageWidget(
        error: error.toString(),
        stackTrace: stackTrace,
      ),
      loading: () => LoadingWidget(
        backgroundImage: newPlayerBackgroundImage,
      ),
    );
  }
}
