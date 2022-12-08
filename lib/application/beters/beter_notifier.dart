import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:stavnica/application/beters/beters_riverpod.dart';
import 'package:stavnica/core/injection_container.dart';
import 'package:stavnica/domain/beters2/beter_repository.dart';

final betersNotifierProvider =
    StateNotifierProvider.autoDispose<BetersNotifier, BetersState>(
  (ref) {
    return BetersNotifier(beterRepository: sl<IBeterRepository>());
  },
);
