import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:kamon_app_client/pages/home_page.dart';
import 'package:kamon_app_client/pages/init_page.dart';
import 'package:kamon_app_client/pages/signin_page.dart';
import 'package:kamon_app_client/pages/signup_page.dart';
import 'package:kamon_app_client/utils/local_storage_access.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: '.env');
  await Supabase.initialize(
    url: dotenv.env['SUPABASE_URL'] ?? "",
    anonKey: dotenv.env['SUPABASE_ANON_KEY'] ?? "",
  );
  // await LocalStorageAccess.setEmail('lovehthree0616@gmail.com');
  // await LocalStorageAccess.setPassword('password');
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: goRouter,
      title: 'kamon_app_client',
      theme: ThemeData(useMaterial3: false),
    );
  }
}

/// TODO: デバック用なのでプロタクトリリース時は削除
final goRouter = GoRouter(
  initialLocation: '/init',
  routes: [
    GoRoute(
        path: '/init',
        pageBuilder: (context, state) {
          return const MaterialPage(
            child: InitPage(),
          );
        }),
    GoRoute(
      path: '/home',
      pageBuilder: (context, state) {
        return const MaterialPage(
          child: HomePage(),
        );
      },
    ),
    // TODO: サインアップ画面作成
    GoRoute(
        path: '/signup',
        pageBuilder: (context, state) {
          return const MaterialPage(
            child: SignupPage(),
          );
        }),
    // TODO: サインイン画面作成
    GoRoute(
        path: '/signin',
        pageBuilder: (context, state) {
          return const MaterialPage(
            child: SigninPage(),
          );
        }),
  ],
);
