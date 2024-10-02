part of 'component_summary_mode.dart';

class FunctionSummaryModel extends ComponentSummaryModel {
  const FunctionSummaryModel({
    required super.name,
    required this.type,
    super.videoId,
    required super.sample,
  });

  final ComponentType type;
}
