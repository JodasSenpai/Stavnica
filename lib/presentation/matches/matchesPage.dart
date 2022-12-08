import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lottie/lottie.dart';
import 'package:stavnica/application/auth/auth_notifier.dart';
import 'package:stavnica/application/matches/matches_notifire.dart';

import '../router.gr.dart';

class MatchesPage extends ConsumerWidget {
  const MatchesPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var matchesState = ref.watch(matchesNotifierProvider);
    var user = ref.read(authNotifierProvider.notifier).getCurrentUser();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tekme"),
        actions: [
          ElevatedButton.icon(
              onPressed: () {
                ref.read(authNotifierProvider.notifier).logout();
              },
              icon: Icon(Icons.logout),
              label: Text("Odjava"))
        ],
      ),
      body: matchesState.when(
          initial: (() => Text("TextInitial")),
          loading: () => Center(
                child: Lottie.asset('assets/soccer-fans.json',
                    width: 400, height: 400, fit: BoxFit.cover),
              ),
          loaded: ((matches) {
            return Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height - 200,
                  child: ListView.builder(
                      itemCount: matches.length,
                      itemBuilder: ((context, index) {
                        return GestureDetector(
                          onTap: (() {
                            context.router.push(
                                BetOnMatch(game: matches[index], user: user!));
                          }),
                          child: Card(
                            color: matches[index].didEnd
                                ? Colors.grey
                                : Colors.amber.shade300,
                            margin: EdgeInsets.all(8.0),
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  matches[index].didEnd
                                      ? Text(
                                          "${matches[index].team1} ${matches[index].team1goals}: ${matches[index].team2goals} ${matches[index].team2}")
                                      : Text(
                                          "${matches[index].team1} : ${matches[index].team2}, ${matches[index].gameStartTime.day}.${matches[index].gameStartTime.month}  ${matches[index].gameStartTime.hour}h"),
                                  Container(
                                    child: SizedBox(
                                      width: 40,
                                      height: 40,
                                      child: Icon(Icons.logout),
                                    ),
                                    color: Colors.blue,
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      })),
                ),
              ],
            );
          }),
          failed: ((message) => Column(
                children: [
                  Text(message),
                  ElevatedButton(
                      onPressed: () {
                        ref.read(matchesNotifierProvider.notifier).init();
                      },
                      child: Text("Reset"))
                ],
              ))),
    );
  }
}
