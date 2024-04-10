import 'package:flutter/material.dart';

import 'package:flutter_guide/src/shared/models/component_group_model.dart';
import 'package:flutter_guide/src/shared/widgets/list_tile_item_widget.dart';
import 'package:flutter_guide/src/shared/widgets/icon_button_widget.dart';

class ComponentGroupWidget extends StatefulWidget {
  const ComponentGroupWidget({
    super.key,
    required this.componentGroup,
  });

  final ComponentGroupModel componentGroup;

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
          title: widget.componentGroup.title,
          icon: widget.componentGroup.icon,
          trailingWidgets: <Widget>[
            Icon(
              isExpanded ? Icons.arrow_drop_down : Icons.arrow_right_sharp,
            ),
          ],
        ),
        if (isExpanded)
          Column(
            children: List.generate(
              widget.componentGroup.components.length,
              (index) {
                final componentName = widget.componentGroup.components[index];

                return ListTileItemWidget(
                  onTap: () {},
                  title: componentName,
                  padding: const EdgeInsets.only(
                    left: 20.0,
                  ),
                  trailingWidgets: [
                    IconButtonWidget(
                      onTap: () {},
                      icon: Icons.bookmark_border,
                    ),
                  ],
                );
              },
            ),
          ),
      ],
    );
  }
}
