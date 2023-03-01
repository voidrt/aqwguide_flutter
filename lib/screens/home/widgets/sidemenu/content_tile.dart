import 'package:flutter/material.dart';
import 'package:travel_seila/themes/colors.dart';
import 'package:travel_seila/themes/paddings.dart';

class ContentTile extends StatefulWidget {
  const ContentTile({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  State<ContentTile> createState() => _ContentTileState();
}

class _ContentTileState extends State<ContentTile> {
  bool isHovering = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      onHover: (hovering) {
        setState(() => isHovering = hovering);
      },
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(
          horizontal: PaddingMeasure.gg,
        ),
        title: Text(
          '+ ${widget.text}',
          style: Theme.of(context).textTheme.bodySmall!.copyWith(
                color: isHovering ? AppColors.textWhite : AppColors.grey50,
              ),
        ),
      ),
    );
  }
}
