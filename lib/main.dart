import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:kamon_app_client/pages/map_page.dart';

void main() async {
   WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: '.env');
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: goRouter,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}

final goRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      pageBuilder: (context, state) {
        return MaterialPage(
          child: const MapPage(),
        );
      },
    ),
    // TODO: サインアップ画面作成
    GoRoute(
      path: '/signup',
      pageBuilder: (context, state){
        return MaterialPage(child: const Placeholder());
      }
    ),
    // TODO: サインイン画面作成
    GoRoute(
      path: '/signin',
      pageBuilder: (context, state){
        return MaterialPage(child: const Placeholder());
      }
    ),
  ]
);