import 'package:poscrisma/index.dart';
import 'package:get_it/get_it.dart';

class SplashRepository {
  final provider = GetIt.instance.get<SplashProvider>();

  Future<SplashUser> getUser() async {
    return await provider.getUser();
  }
}
