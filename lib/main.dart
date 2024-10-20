import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get_it/get_it.dart';
import 'package:loggy/loggy.dart';
import 'package:poscrisma/index.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  await _init();
  runApp(const AppPage());
}

Future<void> _init() async {
  HttpOverrides.global = CustomHttpOverrides();
  WidgetsFlutterBinding.ensureInitialized();
  await _initSupabase();
  AppDependencies.register();
  _initLoggy();
}

void _initLoggy() {
  Loggy.initLoggy(
    logOptions: const LogOptions(
      LogLevel.all,
      stackTraceLevel: LogLevel.warning,
    ),
    logPrinter: const PrettyPrinter(),
  );
}

Future<void> _initSupabase() async {
  await dotenv.load();
  final supabase = await Supabase.initialize(
    url: dotenv.env['SUPABASE_URL'] ?? '',
    anonKey: dotenv.env['SUPABASE_KEY'] ?? '',
    debug: true,
  );
  GetIt.instance.registerLazySingleton(() => supabase);
  GetIt.instance.registerLazySingleton(() => supabase.client);
}
