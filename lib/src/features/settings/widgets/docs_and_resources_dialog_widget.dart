import 'package:flutter/material.dart';

import 'package:flutter_guide/src/core/constants/docs_and_resources_widget.dart';

import 'package:flutter_guide/src/shared/widgets/custom_dialog/custom_dialog.dart';
import 'package:flutter_guide/src/shared/widgets/list_tile_item_widget.dart';
import 'package:flutter_guide/src/shared/utils/open_url.dart';

class DocsAndResourcesDialogWidget extends StatelessWidget {
  const DocsAndResourcesDialogWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomDialog.dialog(
      title: 'Docs And Resources',
      actions: [
        CustomDialog.button(
          text: 'Ok',
          textColor: Colors.black,
          backgroundColor: Colors.white,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ],
      children: List.generate(docsAndResources.length, (index) {
        final item = docsAndResources[index];

        return ListTileItemWidget(
          onTap: () {
            openURL(
              () => context,
              item.url,
            );
          },
          icon: item.icon,
          title: item.name,
          openInBrowser: true,
        );
      }),
    );
  }
}
