// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i4;
import 'package:firebase_auth/firebase_auth.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:stavnica/application/auth/auth_riverpod.dart' as _i17;
import 'package:stavnica/application/beters/beters_riverpod.dart' as _i18;
import 'package:stavnica/application/matches/match_details/match_details_riverpod.dart'
    as _i13;
import 'package:stavnica/application/matches/matches_riverpod.dart' as _i16;
import 'package:stavnica/domain/auth/auth_repository.dart' as _i5;
import 'package:stavnica/domain/beters2/beter_repository.dart' as _i8;
import 'package:stavnica/domain/matches2/match.dart' as _i15;
import 'package:stavnica/domain/matches2/match_repository.dart' as _i11;
import 'package:stavnica/infrastructure/auth/auth_repository.dart' as _i6;
import 'package:stavnica/infrastructure/beters/beter_repository.dart' as _i9;
import 'package:stavnica/infrastructure/beters/datasource/beter_remote_data_source.dart'
    as _i7;
import 'package:stavnica/infrastructure/matches/datasource/match_remote_data_source.dart'
    as _i10;
import 'package:stavnica/infrastructure/matches/match_repository.dart' as _i12;
import 'package:tuple/tuple.dart' as _i14;

import 'injection_container.dart' as _i19;

/// ignore_for_file: unnecessary_lambdas
/// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of main-scope dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final registerModule = _$RegisterModule();
  gh.lazySingleton<_i3.FirebaseAuth>(() => registerModule.firebaseAuth);
  gh.lazySingleton<_i4.FirebaseFirestore>(
      () => registerModule.firestoreDatabase);
  gh.lazySingleton<_i5.IAuthRepository>(
      () => _i6.AuthRepository(gh<_i3.FirebaseAuth>()));
  gh.lazySingleton<_i7.IBeterRemoteDatasource>(
      () => _i7.BeterRemoteDatasource(gh<_i4.FirebaseFirestore>()));
  gh.lazySingleton<_i8.IBeterRepository>(() => _i9.BeterRepository(
      beterRemoteDatasource: gh<_i7.IBeterRemoteDatasource>()));
  gh.lazySingleton<_i10.IMatchRemoteDatasource>(
      () => _i10.MatchRemoteDatasource(gh<_i4.FirebaseFirestore>()));
  gh.lazySingleton<_i11.IMatchRepository>(() => _i12.MatchRepository(
      matchRemoteDatasource: gh<_i10.IMatchRemoteDatasource>()));
  gh.factory<_i13.MatchDetailsNotifier>(() => _i13.MatchDetailsNotifier(
        tuple: gh<_i14.Tuple2<_i15.Game, _i3.User>>(),
        beterRepository: gh<_i8.IBeterRepository>(),
      ));
  gh.factory<_i16.MatchesNotifier>(
      () => _i16.MatchesNotifier(matchRepository: gh<_i11.IMatchRepository>()));
  gh.factory<_i17.AuthNotifier>(
      () => _i17.AuthNotifier(authRepository: gh<_i5.IAuthRepository>()));
  gh.factory<_i18.BetersNotifier>(
      () => _i18.BetersNotifier(beterRepository: gh<_i8.IBeterRepository>()));
  return getIt;
}

class _$RegisterModule extends _i19.RegisterModule {}
