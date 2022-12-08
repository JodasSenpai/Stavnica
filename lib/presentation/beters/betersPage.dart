import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lottie/lottie.dart';
import 'package:stavnica/application/auth/auth_notifier.dart';
import 'package:stavnica/application/beters/beter_notifier.dart';
import 'package:stavnica/application/matches/match_details/match_details_notifier.dart';
import 'package:stavnica/presentation/router.gr.dart';

class BetersPage extends ConsumerWidget {
  BetersPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    /*var beters = [
      {"name": "Ziga", "tocke": 5},
      {"name": "David", "tocke": 2},
      {"name": "Vid", "tocke": -6},
    ];*/

    var betersState = ref.watch(betersNotifierProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Lestvica"),
        actions: [
          ElevatedButton.icon(
              onPressed: () {
                ref.read(authNotifierProvider.notifier).logout();
              },
              icon: Icon(Icons.logout),
              label: Text("Odjava"))
        ],
      ),
      body: betersState.when(
          initial: (() => Text("TextInitial")),
          loading: () => Center(
                child: Lottie.asset('assets/soccer-fans.json',
                    width: 400, height: 400, fit: BoxFit.cover),
              ),
          loaded: ((beters) {
            //beters = beters.toList();
            //print(beters[0].name);
            return Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height - 200,
                  child: ListView.builder(
                      itemCount: beters.length,
                      itemBuilder: ((context, index) {
                        return GestureDetector(
                          child: Card(
                            color: Colors.amber.shade300,
                            margin: EdgeInsets.all(8.0),
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Row(
                                children: [
                                  Text(
                                      "${beters[index].name.split("@")[0]}, tocke: ${beters[index].points}")
                                ],
                              ),
                            ),
                          ),
                          onTap: (() {
                            //context.router.push(BeterDetails(matches: beters[index].bets));
                          }),
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
                        ref.read(betersNotifierProvider.notifier).init();
                      },
                      child: Text("Reset"))
                ],
              ))),
    );
  }
}
