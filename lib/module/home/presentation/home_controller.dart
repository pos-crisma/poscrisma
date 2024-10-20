import 'package:poscrisma/index.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class HomeController {
  final repository = GetIt.instance.get<HomeRepository>();

  void init(BuildContext context) {}
  void dispose() {}
}
