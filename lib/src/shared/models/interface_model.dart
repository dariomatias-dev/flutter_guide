import 'package:flutter/material.dart';

class InterfaceModel {
  const InterfaceModel({
    required this.name,
    required this.fileName,
    required this.component,
  });

  final String name;
  final String fileName;
  final Widget component;
}
