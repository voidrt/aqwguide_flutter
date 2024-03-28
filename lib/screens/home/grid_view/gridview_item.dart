import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:travel_seila/themes/colors.dart';
import 'package:travel_seila/themes/paddings.dart';

class GridViewItem extends ConsumerStatefulWidget {
  const GridViewItem({
    Key? key,
    required this.label,
    required this.width,
    required this.widgetRoute,
  }) : super(key: key);

  final String label;
  final double width;
  final String widgetRoute;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _GridViewItemState();
}

class _GridViewItemState extends ConsumerState<GridViewItem> {
  Color foregroundColor = AppColors.textWhite;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.goNamed(widget.widgetRoute),
      onHover: (hovering) => setState(
        () => foregroundColor =
            hovering ? AppColors.secondary : AppColors.textWhite,
      ),
      child: Container(
        width: widget.width,
        padding: const EdgeInsets.symmetric(horizontal: Paddings.extraSmall),
        decoration: BoxDecoration(
          color: Colors.white10,
          border: Border.all(
            width: 1,
            color: foregroundColor,
          ),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: Paddings.extraSmall),
            child: Text(
              widget.label,
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .bodySmall!
                  .copyWith(color: foregroundColor),
            ),
          ),
        ),
      ),
    );
  }
}
