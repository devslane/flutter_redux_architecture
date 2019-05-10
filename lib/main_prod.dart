import 'package:flutter/material.dart';
import 'package:flutter_demo/app_config.dart';
import 'package:flutter_demo/main.dart';

void main() {
  AppConfig.setupEnv(Environment.prod);
  runApp(DemoApp());
}
