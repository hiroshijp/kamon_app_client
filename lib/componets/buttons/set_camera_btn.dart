import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kamon_app_client/providers/map_control.dart';
import 'package:kamon_app_client/providers/position.dart';

class SetCameraBtn extends ConsumerWidget {
  const SetCameraBtn({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 10, 10, 0),
      child: GestureDetector(
        onTap: () {
          final currentPosition = ref.read(currentPositionProvider);
          ref.read(mapControllerProvider.notifier).setCamera(currentPosition);
        },
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(5)),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                spreadRadius: 1.0,
                blurRadius: 10.0,
                offset: Offset(3, 3),
              ),
            ],
          ),
          child: const Icon(
            Icons.my_location,
            size: 24.0,
          ),
        ),
      ),
    );
  }
}
