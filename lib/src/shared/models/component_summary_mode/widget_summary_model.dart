part of 'component_summary_mode.dart';

class WidgetSummaryModel extends ComponentSummaryModel {
  const WidgetSummaryModel({
    required super.name,
    required this.category,
    required super.sample,
  });

  final WidgetCategory category;
}
