import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:previsao_app/injection.dart';
import 'package:previsao_app/presentation/app_widget.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  configureInjection(Environment.prod);
  runApp(AppWidget());
}