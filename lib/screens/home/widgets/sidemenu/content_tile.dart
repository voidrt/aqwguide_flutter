import 'package:flutter/material.dart';
import 'package:travel_seila/themes/colors.dart';
import 'package:travel_seila/themes/paddings.dart';

class ContentTile extends StatefulWidget {
  const ContentTile({
    Key? key,
    required this.text,
    required this.route,
  }) : super(key: key);

  final String text;
  final String route;

  @override
  State<ContentTile> createState() => _ContentTileState();
}

class _ContentTileState extends State<ContentTile> {
  Color textColor = AppColors.grey50;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.popAndPushNamed(context, widget.route);
      },
      onHover: (hovering) {
        setState(() {
          textColor = hovering ? AppColors.textWhite : AppColors.grey50;
        });
      },
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(
          horizontal: PaddingMeasure.gg,
        ),
        title: Text(
          '+ ${widget.text}',
          style: Theme.of(context).textTheme.bodySmall!.copyWith(
                color: textColor,
              ),
        ),
      ),
    );
  }
}
