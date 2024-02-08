import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kamon_app_client/componets/buttons/get_nearby_crest_btn.dart';
import 'package:kamon_app_client/componets/buttons/help_btn.dart';
import 'package:kamon_app_client/componets/buttons/set_camera_btn.dart';
import 'package:kamon_app_client/componets/buttons/show_completed_crest_btn.dart';
import 'package:kamon_app_client/componets/buttons/sign_out_btn.dart';
import 'package:kamon_app_client/pages/map_page.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Scaffold(
      appBar: null,
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          MapPage(),
          Align(
            alignment: Alignment.topRight,
            child: Column(
              children: <Widget>[
                SignOutBtn(),
                ShowCompletedCrestBtn(),
                HelpBtn(),
                SetCameraBtn(),
              ],
            ),
          ),
          // TODO:家紋獲得ボタンの実装

          Align(
            alignment: Alignment.bottomCenter,
            child: GetNearbyCrestBtn(),
          ),
        ],
      ),
    );
  }
}
