import 'package:builder/app_module.dart';
import 'package:builder/app_widget.dart';
// import 'package:core/logger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:logger/logger.dart';

void main() {
  // Inicializa o Logger generico
  // Esse logger pode conter qualquer tipo de logger
  // Facil mudança
  Logger.initialize();

  return runApp(ModularApp(module: AppModule(), child: const AppWidget()));
}
