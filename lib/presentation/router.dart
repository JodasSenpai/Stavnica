import 'package:auto_route/annotations.dart';
import 'package:auto_route/empty_router_widgets.dart';
import 'package:stavnica/presentation/beters/betersDetails.dart';
import 'package:stavnica/presentation/beters/betersPage.dart';
import 'package:stavnica/presentation/matches/betOnMatch.dart';
import 'package:stavnica/presentation/matches/matchesPage.dart';
import 'package:stavnica/presentation/navigation.dart';

@MaterialAutoRouter(replaceInRouteName: "Page,Route", routes: <AutoRoute>[
  AutoRoute(initial: true, page: NavigationPage, path: "/", children: [
    AutoRoute(
        initial: true,
        path: "match",
        name: "MatchRouter",
        page: EmptyRouterPage,
        children: [
          AutoRoute(initial: true, path: "", page: MatchesPage),
          AutoRoute(path: "matchdetails", page: BetOnMatch),
        ]),
    AutoRoute(
        path: "beter",
        name: "BeterRouter",
        page: EmptyRouterPage,
        children: [
          AutoRoute(path: "", page: BetersPage),
          AutoRoute(path: "details", page: BeterDetails),
        ]),
  ]),
])
class $AppRouter {}
