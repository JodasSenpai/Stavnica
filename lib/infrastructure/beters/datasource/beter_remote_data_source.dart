import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:stavnica/domain/beters2/beter.dart';
import 'package:injectable/injectable.dart';
import 'package:stavnica/domain/matches2/match.dart';

abstract class IBeterRemoteDatasource {
  Future<List<Beter>> getAllBeters();
  Future<List<Beter>> getAllBetersForSpecificMatch(Game game);
//matchId, userId -> documentsId

  Future<void> setBet(
      Game matchId, String userId, int team1goals, int team2goals);
}

@LazySingleton(as: IBeterRemoteDatasource)
class BeterRemoteDatasource implements IBeterRemoteDatasource {
  final FirebaseFirestore firestore;

  BeterRemoteDatasource(this.firestore);
  @override
  Future<List<Beter>> getAllBeters() async {
    List<Beter> list = [];

    await firestore.collection("beters").get().then((event) async {
      for (var doc in event.docs) {
        //print("${doc.id} => ${doc.data()}");
        final data = doc.data();
        List<GameBet> bets = [];
        for (var game in await data["tekme"]) {
          var tekma = await game["match"].get();
          var tekma1 = await tekma.data();
          var match = GameBet(
            gameReference: tekma.reference,
            team1goals: game["team1goals"],
            team2goals: game["team2goals"],
          );
          bets.add(match);
        }

        list.add(Beter(name: data["name"], points: data["tocke"], bets: bets));
      }
    });
    return list;
  }

  @override
  Future<void> setBet(
      Game game, String userId, int team1goals, int team2goals) async {
    var beter = await firestore.collection("beters").doc(userId);
    beter.get().then((docSnapshot) => {
          if (docSnapshot.exists)
            {
              beter.update({
                "tekme": FieldValue.arrayUnion([
                  {
                    "match": game.reference,
                    "team1goals": team1goals,
                    "team2goals": team2goals,
                  }
                ])
              })
            }
          else
            {
              beter.set({
                "tocke": 0,
                "name": userId,
                "tekme": [
                  {
                    "match": game.reference,
                    "team1goals": team1goals,
                    "team2goals": team2goals,
                  }
                ]
              }) // create the document
            }
        });

    var match = await firestore.collection("match").doc(game.id);
    var userReference = await beter.get().then((value) => value.reference);
    match.get().then((docSnapshot) => {
          if (docSnapshot.exists)
            {
              match.update({
                "bets": FieldValue.arrayUnion([userReference])
              })
            }
        });
    return null;
  }

  @override
  Future<List<Beter>> getAllBetersForSpecificMatch(Game game) async {
    List<Beter> list = [];

    var match = await firestore.collection("match").doc(game.id).get();
    var matchData = match.data();
    var beters = matchData!["bets"];
    for (var bet in beters) {
      var betersReferences1 = await bet.get();
      var betersReferences = await betersReferences1.data();
      //Beter beter = Beter(name: betersReferences., points: points, bets: bets)
      List<GameBet> bets = [];
      for (var game in await betersReferences["tekme"]) {
        var tekma = await game["match"].get();
        var tekma1 = await tekma.data();
        var match = GameBet(
          gameReference: tekma.reference,
          team1goals: game["team1goals"],
          team2goals: game["team2goals"],
        );
        bets.add(match);
      }
      list.add(Beter(
          name: betersReferences["name"],
          points: betersReferences["tocke"],
          bets: bets));
    }
    return list;
    /*await match.get().then((docSnapshot) => {
          if (docSnapshot.exists)
            {
              match.get().then((value) async {
                var data = value.data();
                var beters = data!["bets"];
                beters.forEach((bet) async {
                  var betersReferences1 = await bet.get();
                  var betersReferences = await betersReferences1.data();
                  //Beter beter = Beter(name: betersReferences., points: points, bets: bets)
                  List<Game> bets = [];
                  for (var game in await betersReferences["tekme"]) {
                    var tekma = await game["match"].get();
                    var tekma1 = await tekma.data();
                    var match = Game(
                        reference: tekma.reference,
                        id: tekma.id,
                        quota: tekma1["quota"].toDouble(),
                        didEnd: tekma1["didEnd"],
                        team1: tekma1["team1"].toString(),
                        team2: tekma1["team2"].toString(),
                        team1goals: tekma1["team1goals"],
                        team2goals: tekma1["team2goals"],
                        gameStartTime:
                            DateTime.parse(tekma1["time"].toDate().toString()));
                    bets.add(match);
                  }
                  list.add(Beter(
                      name: betersReferences["name"],
                      points: betersReferences["tocke"],
                      bets: bets));
                });
              })
            }
        });*/
  }
}
