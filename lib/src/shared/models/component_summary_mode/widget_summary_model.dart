part of 'component_summary_mode.dart';

class WidgetSummaryModel extends ComponentSummaryModel {
  const WidgetSummaryModel({
    required super.name,
    required this.type,
    super.videoId,
    required super.sample,
  });

  final ComponentType type;
}
