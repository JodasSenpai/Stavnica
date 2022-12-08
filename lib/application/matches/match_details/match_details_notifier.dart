import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:stavnica/application/beters/beters_riverpod.dart';
import 'package:stavnica/application/matches/match_details/match_details_riverpod.dart';
import 'package:stavnica/core/injection_container.dart';
import 'package:stavnica/domain/beters2/beter_repository.dart';
import 'package:stavnica/domain/matches2/match.dart';
import 'package:tuple/tuple.dart';

final matchDetailsNotifierProvider = StateNotifierProvider.autoDispose
    .family<MatchDetailsNotifier, MatchDetailsState, Tuple2<Game, User>>(
  (ref, tuple) {
    return MatchDetailsNotifier(
        beterRepository: sl<IBeterRepository>(), tuple: tuple);
  },
);
