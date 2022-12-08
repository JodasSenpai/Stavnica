import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lottie/lottie.dart';
import 'package:stavnica/application/auth/auth_notifier.dart';
import 'package:stavnica/application/beters/beter_notifier.dart';
import 'package:stavnica/application/matches/match_details/match_details_notifier.dart';
import 'package:stavnica/domain/matches2/match.dart';
import 'package:tuple/tuple.dart';

class BetOnMatch extends ConsumerWidget {
  const BetOnMatch({required this.game, required this.user});
  final Game game;
  final User user;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    int? team1goals;
    int? team2goals;
    Tuple2<Game, User> tuple = Tuple2(game, user);

    var matchDetailsState = ref.watch(matchDetailsNotifierProvider(tuple));
    return Scaffold(
        appBar: AppBar(
          title: const Text("Napovedi"),
        ),
        body: matchDetailsState.when(
            loading: (() => Center(
                  child: Lottie.asset('assets/soccer-fans.json',
                      width: 400, height: 400, fit: BoxFit.cover),
                )),
            alreadyBet: (beters) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Center(
                        child: Text("${game.team1} : ${game.team2}",
                            style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: Colors.green)),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height - 200,
                        child: ListView.builder(
                            itemCount: beters.length,
                            itemBuilder: ((context, index) {
                              var gameBet = beters[index]
                                  .bets
                                  .where((element) =>
                                      element.gameReference.id == game.id)
                                  .first;
                              return GestureDetector(
                                onTap: (() {}),
                                child: Card(
                                  color: beters[index].name == user.email
                                      ? Colors.blue
                                      : Colors.amber.shade300,
                                  margin: const EdgeInsets.all(8.0),
                                  child: Padding(
                                    padding: const EdgeInsets.all(16.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                            "${beters[index].name.split("@")[0]} -> ",
                                            style: const TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w400,
                                            )),
                                        Text(
                                          "${gameBet.team1goals} : ${gameBet.team2goals}",
                                          style: const TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w800,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            })),
                      ),
                    ],
                  ),
                ),
            failed: ((message) => Text(message)),
            didNotBet: (() {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("${game.team1}"),
                      Container(
                        width: 50,
                        child: TextField(
                          decoration: const InputDecoration(
                              fillColor: Colors.grey,
                              border: OutlineInputBorder()),
                          controller: TextEditingController(),
                          keyboardType: TextInputType.number,
                          inputFormatters: <TextInputFormatter>[
                            FilteringTextInputFormatter.digitsOnly
                          ],
                          onChanged: (value) {
                            team1goals = int.parse(value);
                          },
                        ),
                      ),
                      const Text(":"),
                      Container(
                        width: 50,
                        child: TextField(
                          decoration: const InputDecoration(
                              fillColor: Colors.grey,
                              border: OutlineInputBorder()),
                          controller: TextEditingController(),
                          keyboardType: TextInputType.number,
                          inputFormatters: <TextInputFormatter>[
                            FilteringTextInputFormatter.digitsOnly
                          ],
                          onChanged: (value) {
                            team2goals = int.parse(value);
                          },
                        ),
                      ),
                      Text("${game.team2}"),
                    ],
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  ElevatedButton(
                      onPressed: (() {
                        if (team1goals == null || team2goals == null) {
                          return null;
                        }
                        User? user;
                        ref.read(authNotifierProvider).maybeMap(
                            authenticated: (value) {
                          user = value.user;
                        }, orElse: () {
                          return user = null;
                        });
                        ref
                            .read(matchDetailsNotifierProvider(tuple).notifier)
                            .bet(team1goals!, team2goals!, game, user!);
                      }),
                      child: const Text("Napovej"))
                ],
              );
            })));
  }
}
