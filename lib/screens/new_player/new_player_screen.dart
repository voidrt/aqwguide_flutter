import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:travel_seila/core/providers/page_provider/page_info_provider.dart';
import 'package:travel_seila/general_widgets/generic_screen/generic_screen.dart';
import 'package:travel_seila/models/page_info_model.dart';
import 'package:travel_seila/screens/error_page/error_page.dart';
import 'package:travel_seila/screens/loading_page/loading_widget.dart';
import 'package:travel_seila/general_widgets/scaffold_custom/scaffold_custom.dart';

class NewPlayerScreen extends ConsumerWidget {
  const NewPlayerScreen({Key? key}) : super(key: key);

  final String newPlayerBackgroundImage = 'fantasy 3.png';

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
              pageIndex: 2,
              child: GenericPageLayout(
                pageTitle: pageTitle,
                pageTopics: topics,
                backgroundImage: newPlayerBackgroundImage,
                constraints: constraints,
              ),
            );
          },
        );
      },
      error: (error, stackTrace) => ErrorPageWidget(
        error: error.toString(),
        stackTrace: stackTrace,
      ),
      loading: () => const LoadingWidget(),
    );
  }
}
