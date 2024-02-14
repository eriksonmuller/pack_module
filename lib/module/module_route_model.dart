
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ModuleRouteModel {
  String path;
  Module module;
  Widget? child;
  List<ParallelRoute>? children;

  ModuleRouteModel({required this.module, required this.path, this.children, this.child});
}