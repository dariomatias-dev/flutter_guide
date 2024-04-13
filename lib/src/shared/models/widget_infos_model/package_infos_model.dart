part of 'component_infos_model.dart';

class PackageInfosModel extends ComponentInfosModel {
  const PackageInfosModel({
    required super.componentNames,
    required this.samples,
  });

  final Map<String, PackageSummaryModel> samples;
}
