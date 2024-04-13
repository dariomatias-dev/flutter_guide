part of 'component_infos_model.dart';

class WidgetInfosModel extends ComponentInfosModel {
  const WidgetInfosModel({
    required super.componentNames,
    required this.samples,
  });

  final Map<String, WidgetSummaryModel> samples;
}
