import 'package:flutter/material.dart';

import 'package:flutter_guide/src/shared/widgets/list_tile_item_widget.dart';
import 'package:flutter_guide/src/shared/widgets/trailing_icon_button_widget.dart';

class ComponentGroupWidget extends StatefulWidget {
  const ComponentGroupWidget({super.key});

  @override
  State<ComponentGroupWidget> createState() => _ComponentGroupWidgetState();
}

class _ComponentGroupWidgetState extends State<ComponentGroupWidget> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTileItemWidget(
          onTap: () {
            setState(() {
              isExpanded = !isExpanded;
            });
          },
          title: 'Text',
          icon: Icons.text_fields,
          trailingWidgets: const <Widget>[
            Icon(
              Icons.arrow_right_sharp,
            ),
          ],
        ),
        if (isExpanded)
          Padding(
            padding: const EdgeInsets.only(
              left: 12.0,
            ),
            child: Column(
              children: [
                ListTileItemWidget(
                  onTap: () {},
                  title: 'Text',
                  trailingWidgets: [
                    TrailingIconButtonWidget(
                      onPressed: () {},
                      icon: Icons.bookmark_border,
                    ),
                  ],
                ),
              ],
            ),
          ),
      ],
    );
  }
}
