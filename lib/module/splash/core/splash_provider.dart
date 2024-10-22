import 'package:poscrisma/index.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class SplashProvider extends HttpProvider {
  Future<SplashUser> getUser() async {
    final result = await Supabase.instance.client.auth.getUser();
    final supabaseUser = result.user;
    if (supabaseUser == null) {
      throw SplashError.userNotFound;
    }

    final user = await get(path: "v1/profile");
    return SplashUser.fromJson(user);
  }
}
