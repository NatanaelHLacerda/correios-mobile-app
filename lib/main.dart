import 'package:correios_mobile_app/core/architecture/injector/injector.dart';
import 'package:correios_mobile_app/features/application.dart';
import 'package:flutter/material.dart';

void main() {
  AppInjector.initialize();
  runApp(const Application());
}


