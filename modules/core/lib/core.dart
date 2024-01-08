library core;

export './container/container.dart';
export './firebase/config.dart';
export './firebase/instance_analitycs.dart';
export './firebase/instance_firestore.dart';
export './manager/store.dart';
export './manager/store/effect/effect.dart';
export './manager/store/reducer/reducer.dart';
export './manager/store/state/action.dart';
export './module/auth/public_guard.dart';
export './module/network/error/model/error_info.dart';
export './module/network/interface/network.dart';
export './module/network/network_module.dart';
export './module/package/package.dart';

// *
export 'module/storage/local_storage.dart';
export 'module/storage/repositories/storage.dart';
export 'module/auth/private_guard.dart';
export 'module/network/client/base_request.dart';

//
export 'package:dio/dio.dart';
export 'package:flutter_modular/flutter_modular.dart';
export 'package:result_dart/result_dart.dart';

//*

export 'package:cloud_firestore/cloud_firestore.dart';
export 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';
export 'package:freezed_annotation/freezed_annotation.dart';
