import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:stavnica/domain/matches2/match.dart';

class BeterDetails extends StatelessWidget {
  const BeterDetails({required this.matches});

  final List<GameBet> matches;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Stave posameznika")),
      body: ListView.builder(
          itemCount: matches.length,
          itemBuilder: ((context, index) {
            return Card(
              margin: EdgeInsets.all(8),
              color: Colors.green.shade400,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                    "${matches[index].gameReference.id}  ${matches[index].team1goals}:${matches[index].team2goals}"),
              ),
            );
          })),
    );
  }
}
