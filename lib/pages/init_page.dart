import 'package:flutter/material.dart';
import 'package:kamon_app_client/pages/home_page.dart';
import 'package:kamon_app_client/pages/signin_page.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:kamon_app_client/utils/local_storage_access.dart';

class InitPage extends StatelessWidget {
  const InitPage({super.key});

  Future<User?> signInWithLocalPassword() async {
    final email = await LocalStorageAccess.getEmail();
    final password = await LocalStorageAccess.getPassword();
    if (email == null || password == null) {
      return null;
    }
    try {
      await Supabase.instance.client.auth
          .signInWithPassword(email: email, password: password);
      return Supabase.instance.client.auth.currentUser;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: FutureBuilder<User?>(
        future: signInWithLocalPassword(),
        builder: (BuildContext context, AsyncSnapshot<User?> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (snapshot.data == null) {
            return const SigninPage();
          } else {
            return const HomePage();
          }
        },
      ),
    );
  }
}
