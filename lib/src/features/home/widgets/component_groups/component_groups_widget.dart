import 'package:flutter/material.dart';

import 'package:flutter_guide/src/core/constants/component_groups.dart';

import 'package:flutter_guide/src/features/home/widgets/component_groups/component_group_widgetcomponent_group/component_group_widget.dart';

class ComponentGroupsWidget extends StatelessWidget {
  const ComponentGroupsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 12.0,
          ),
          child: Text(
            'Components',
            style: TextStyle(
              color: Colors.grey.shade600,
              fontSize: 12.0,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        const SizedBox(height: 4.0),
        ...List.generate(
          componentGroups.length * 2 - 1,
          (index) {
            if (index % 2 == 1) {
              return const SizedBox(height: 4.0);
            }

            return ComponentGroupWidget(
              componentGroup: componentGroups[index ~/ 2],
            );
          },
        )
      ],
    );
  }
}