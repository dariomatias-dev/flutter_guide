import 'package:flutter/material.dart';

import 'package:flutter_guide/src/core/constants/function_names.dart';
import 'package:flutter_guide/src/core/enums/widget_category_enum.dart';

// Models
import 'package:flutter_guide/src/shared/models/component_model/component_model.dart';
import 'package:flutter_guide/src/shared/models/component_summary_mode/component_summary_mode.dart';
import 'package:flutter_guide/src/shared/models/widget_infos_model/component_infos_model.dart';

// Functions
import 'package:flutter_guide/src/shared/widgets/component/samples/functions/showbottomsheet_sample.dart';
import 'package:flutter_guide/src/shared/widgets/component/samples/functions/showmodalbottomsheet_sample.dart';

const functions = <FunctionModel>[
  FunctionModel(
    name: FunctionNames.showBottomSheetMaterial,
    icon: Icons.keyboard_arrow_up,
    sample: ShowBottomSheetSample(),
    category: WidgetCategory.functions,
  ),
  FunctionModel(
    name: FunctionNames.showModalBottomSheetMaterial,
    icon: Icons.keyboard_arrow_up,
    sample: ShowModalBottomSheetSample(),
    category: WidgetCategory.functions,
  ),
];

FunctionInfosModel getFunctionInfos() {
  final functionNames = <String>[];
  Map<String, FunctionSummaryModel> samples = {};

  for (var function in functions) {
    functionNames.add(function.name);

    samples[function.name] = FunctionSummaryModel(
      name: function.name,
      category: function.category,
      videoId: function.videoId,
      sample: function.sample,
    );
  }

  return FunctionInfosModel(
    componentNames: functionNames,
    samples: samples,
  );
}
