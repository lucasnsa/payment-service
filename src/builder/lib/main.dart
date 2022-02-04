import 'package:builder/app_module.dart';
import 'package:builder/app_widget.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
// import 'package:core/logger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:logger/logger.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  // Inicializa o Logger generico
  // Esse logger pode conter qualquer tipo de logger
  // Facil mudança
  Logger.initialize();

  FirebaseRemoteConfig remoteConfig = FirebaseRemoteConfig.instance;

  await remoteConfig.setConfigSettings(RemoteConfigSettings(
    fetchTimeout: const Duration(seconds: 10),
    minimumFetchInterval: const Duration(seconds: 30),
  ));

  remoteConfig.setDefaults(<String, dynamic>{
    'welcome_message': 'this is the default welcome message',
    'feat1_enabled': false,
    'apod': false,
  });

  await remoteConfig.fetchAndActivate();

  return runApp(ModularApp(module: AppModule(), child: const AppWidget()));
}
