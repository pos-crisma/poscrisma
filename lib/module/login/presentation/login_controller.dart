import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:go_router/go_router.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:poscrisma/index.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class LoginController extends LoadableController {
  final repository = GetIt.instance.get<LoginRepository>();

  void init(BuildContext context) {}
  void dispose() {}

  Future<void> handleGoogleSignIn(BuildContext context) async {
    isLoading.value = true;
    try {
      var googleSignIn = GoogleSignIn(
        scopes: [
          'email',
        ],
      );

      if (kIsWeb || Platform.isAndroid) {
        googleSignIn = GoogleSignIn(
          serverClientId:
              "957554883675-e0epjnf8qb2hpsfm6fiqtpi99mcbgdre.apps.googleusercontent.com",
          scopes: [
            'email',
          ],
        );
      }

      if (Platform.isIOS || Platform.isMacOS) {
        googleSignIn = GoogleSignIn(
          clientId:
              "957554883675-p5nhmmsq1trveae4d821bhmfrjv8hq93.apps.googleusercontent.com",
          scopes: [
            'email',
          ],
        );
      }

      final googleUser = await googleSignIn.signIn();
      final googleAuth = await googleUser?.authentication;
      final accessToken = googleAuth?.accessToken;
      final idToken = googleAuth?.idToken;

      if (accessToken == null) {
        throw 'No Access Token found.';
      }
      if (idToken == null) {
        throw 'No ID Token found.';
      }

      await supabase.auth.signInWithIdToken(
        provider: OAuthProvider.google,
        idToken: idToken,
        accessToken: accessToken,
      );

      if (!context.mounted) return;
      context.go(AppRouter.home);
    } catch (error) {
      showModalBottomSheet(
        context: context,
        builder: (context) {
          return Scaffold(
            body: Column(
              children: [
                const Text(
                  "Oops,",
                ),
                Text(
                  "Error: ${error}",
                ),
              ],
            ),
          );
        },
      );
    } finally {
      isLoading.value = false;
    }
  }
}
