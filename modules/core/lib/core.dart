library core;

export './container/container.dart';

export './manager/store.dart';
export './manager/store/reducer/reducer.dart';
export './manager/store/effect/effect.dart';
export './manager/store/state/action.dart';

export './module/network/interface/network.dart';
export './module/network/error/model/error_info.dart';
export './module/network/network_module.dart';
export 'module/network/client/base_request.dart';

export './firebase/config.dart';
export './firebase/instance_firestore.dart';
export './firebase/instance_analitycs.dart';

export './module/storage/local_storage.dart';

export 'module/auth/private_guard.dart';
export './module/auth/public_guard.dart';

export 'package:flutter_modular/flutter_modular.dart';
export 'package:result_dart/result_dart.dart';
export 'package:dio/dio.dart';
