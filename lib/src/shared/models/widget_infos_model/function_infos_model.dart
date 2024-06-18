part of 'component_infos_model.dart';

class FunctionInfosModel extends ComponentInfosModel {
  const FunctionInfosModel({
    required super.componentNames,
    required this.samples,
  });

  final Map<String, FunctionSummaryModel> samples;
}
