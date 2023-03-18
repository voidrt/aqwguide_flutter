import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:travel_seila/core/repository/page_info_provider.dart';
import 'package:travel_seila/models/page_info_model.dart';
import 'package:travel_seila/screens/main_widgets/error_page/error_page.dart';
import 'package:travel_seila/screens/main_widgets/loading_widget/loading_widget.dart';
import 'package:travel_seila/screens/main_widgets/scaffold_custom/scaffold_custom.dart';
import 'package:travel_seila/screens/new_player/widgets/expanding_text/expanding_text_widget.dart';
import 'package:travel_seila/screens/new_player/widgets/generic_page_layout/generic_page_layout.dart';

class NewPlayerScreen extends ConsumerWidget {
  const NewPlayerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<PageModel> pageInfo = ref.watch(
      guidePagesModelProvider(0),
    );

    return pageInfo.when(
      data: (state) {
        final List<String>? categories = pageInfo.value?.categories;

        return LayoutBuilder(
          builder: (context, constraints) {
            return ScaffoldWithSideMenu(
              constraints: constraints,
              expandedFlex: 4,
              backgroundImage: 'fantasy 1.png',
              backgroundImageBlur: 5,
              pageIndex: 1,
              child: GenericPageLayout(
                title: 'New Player',
                constraints: constraints,
                paragraphs: [
                  ...List.generate(
                    categories?.length ?? 1,
                    (index) => ExpandingTextWidget(
                      subtitle: categories?[index] ?? 'Lorem Ipsum',
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
      error: (error, stackTrace) => const ErrorPageWidget(),
      loading: () => const LoadingWidget(),
    );
  }
}
