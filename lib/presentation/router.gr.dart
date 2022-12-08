// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i7;
import 'package:auto_route/empty_router_widgets.dart' as _i2;
import 'package:firebase_auth/firebase_auth.dart' as _i10;
import 'package:flutter/material.dart' as _i8;

import '../domain/matches2/match.dart' as _i9;
import 'beters/betersDetails.dart' as _i6;
import 'beters/betersPage.dart' as _i5;
import 'matches/betOnMatch.dart' as _i4;
import 'matches/matchesPage.dart' as _i3;
import 'navigation.dart' as _i1;

class AppRouter extends _i7.RootStackRouter {
  AppRouter([_i8.GlobalKey<_i8.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    NavigationRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.NavigationPage(),
      );
    },
    MatchRouter.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.EmptyRouterPage(),
      );
    },
    BeterRouter.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.EmptyRouterPage(),
      );
    },
    MatchesRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.MatchesPage(),
      );
    },
    BetOnMatch.name: (routeData) {
      final args = routeData.argsAs<BetOnMatchArgs>();
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i4.BetOnMatch(
          game: args.game,
          user: args.user,
        ),
      );
    },
    BetersRoute.name: (routeData) {
      final args = routeData.argsAs<BetersRouteArgs>(
          orElse: () => const BetersRouteArgs());
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i5.BetersPage(key: args.key),
      );
    },
    BeterDetails.name: (routeData) {
      final args = routeData.argsAs<BeterDetailsArgs>();
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i6.BeterDetails(matches: args.matches),
      );
    },
  };

  @override
  List<_i7.RouteConfig> get routes => [
        _i7.RouteConfig(
          NavigationRoute.name,
          path: '/',
          children: [
            _i7.RouteConfig(
              '#redirect',
              path: '',
              parent: NavigationRoute.name,
              redirectTo: 'match',
              fullMatch: true,
            ),
            _i7.RouteConfig(
              MatchRouter.name,
              path: 'match',
              parent: NavigationRoute.name,
              children: [
                _i7.RouteConfig(
                  MatchesRoute.name,
                  path: '',
                  parent: MatchRouter.name,
                ),
                _i7.RouteConfig(
                  BetOnMatch.name,
                  path: 'matchdetails',
                  parent: MatchRouter.name,
                ),
              ],
            ),
            _i7.RouteConfig(
              BeterRouter.name,
              path: 'beter',
              parent: NavigationRoute.name,
              children: [
                _i7.RouteConfig(
                  BetersRoute.name,
                  path: '',
                  parent: BeterRouter.name,
                ),
                _i7.RouteConfig(
                  BeterDetails.name,
                  path: 'details',
                  parent: BeterRouter.name,
                ),
              ],
            ),
          ],
        )
      ];
}

/// generated route for
/// [_i1.NavigationPage]
class NavigationRoute extends _i7.PageRouteInfo<void> {
  const NavigationRoute({List<_i7.PageRouteInfo>? children})
      : super(
          NavigationRoute.name,
          path: '/',
          initialChildren: children,
        );

  static const String name = 'NavigationRoute';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class MatchRouter extends _i7.PageRouteInfo<void> {
  const MatchRouter({List<_i7.PageRouteInfo>? children})
      : super(
          MatchRouter.name,
          path: 'match',
          initialChildren: children,
        );

  static const String name = 'MatchRouter';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class BeterRouter extends _i7.PageRouteInfo<void> {
  const BeterRouter({List<_i7.PageRouteInfo>? children})
      : super(
          BeterRouter.name,
          path: 'beter',
          initialChildren: children,
        );

  static const String name = 'BeterRouter';
}

/// generated route for
/// [_i3.MatchesPage]
class MatchesRoute extends _i7.PageRouteInfo<void> {
  const MatchesRoute()
      : super(
          MatchesRoute.name,
          path: '',
        );

  static const String name = 'MatchesRoute';
}

/// generated route for
/// [_i4.BetOnMatch]
class BetOnMatch extends _i7.PageRouteInfo<BetOnMatchArgs> {
  BetOnMatch({
    required _i9.Game game,
    required _i10.User user,
  }) : super(
          BetOnMatch.name,
          path: 'matchdetails',
          args: BetOnMatchArgs(
            game: game,
            user: user,
          ),
        );

  static const String name = 'BetOnMatch';
}

class BetOnMatchArgs {
  const BetOnMatchArgs({
    required this.game,
    required this.user,
  });

  final _i9.Game game;

  final _i10.User user;

  @override
  String toString() {
    return 'BetOnMatchArgs{game: $game, user: $user}';
  }
}

/// generated route for
/// [_i5.BetersPage]
class BetersRoute extends _i7.PageRouteInfo<BetersRouteArgs> {
  BetersRoute({_i8.Key? key})
      : super(
          BetersRoute.name,
          path: '',
          args: BetersRouteArgs(key: key),
        );

  static const String name = 'BetersRoute';
}

class BetersRouteArgs {
  const BetersRouteArgs({this.key});

  final _i8.Key? key;

  @override
  String toString() {
    return 'BetersRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i6.BeterDetails]
class BeterDetails extends _i7.PageRouteInfo<BeterDetailsArgs> {
  BeterDetails({required List<_i9.GameBet> matches})
      : super(
          BeterDetails.name,
          path: 'details',
          args: BeterDetailsArgs(matches: matches),
        );

  static const String name = 'BeterDetails';
}

class BeterDetailsArgs {
  const BeterDetailsArgs({required this.matches});

  final List<_i9.GameBet> matches;

  @override
  String toString() {
    return 'BeterDetailsArgs{matches: $matches}';
  }
}
