import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:stavnica/domain/beters2/beter.dart';
import 'package:injectable/injectable.dart';
import 'package:stavnica/domain/matches2/match.dart';

abstract class IMatchRemoteDatasource {
  Future<List<Game>> getAllMatches();
}

@LazySingleton(as: IMatchRemoteDatasource)
class MatchRemoteDatasource implements IMatchRemoteDatasource {
  final FirebaseFirestore firestore;

  MatchRemoteDatasource(this.firestore);
  @override
  Future<List<Game>> getAllMatches() async {
    List<Game> list = [];
    await firestore.collection("match").get().then((event) async {
      for (var doc in event.docs) {
        final data = doc.data();
        var match = Game(
            reference: doc.reference,
            id: doc.id,
            quota: data["quota"].toDouble(),
            didEnd: data["didEnd"],
            team1: data["team1"].toString(),
            team2: data["team2"].toString(),
            team1goals: data["team1goals"],
            team2goals: data["team2goals"],
            gameStartTime: DateTime.parse(data["time"].toDate().toString()));
        list.add(match);
      }
    });
    return list;
  }
}
