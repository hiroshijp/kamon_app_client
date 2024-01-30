import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:kamon_app_client/models/crest/crest.dart';

part 'crest_list_provider.g.dart';

@riverpod
Future<List<Crest>> crestList(CrestListRef ref) async {
  final json = await rootBundle.loadString('assets/kamon_data.json');
  final List<dynamic> list = jsonDecode(json);
  return list.map((e) => Crest.fromJson(e)).toList();
}