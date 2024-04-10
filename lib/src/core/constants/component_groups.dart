import 'package:flutter/material.dart';

import 'package:flutter_guide/src/shared/models/component_group_model.dart';

const componentGroups = <ComponentGroupModel>[
  ComponentGroupModel(
    icon: Icons.text_fields,
    title: 'Text',
    components: [
      'Text',
    ],
  ),
  ComponentGroupModel(
    icon: Icons.text_fields,
    title: 'Dialogs',
    components: [
      'SimpleDialog',
      'AlertDialog',
    ],
  ),
];
