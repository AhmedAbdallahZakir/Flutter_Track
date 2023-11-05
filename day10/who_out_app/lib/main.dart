import 'package:flutter/material.dart';
import 'package:who_out/views/commant_play/first_command.dart';

// import 'views/home_view.dart';
// import 'package:circle_avatar/circle_avatar.dart';
// import 'package:image_picker/image_picker.dart';

import 'models/player_model.dart';
import 'views/add_players.dart';
import 'views/home_view.dart';
import 'views/scratch/first_scratch.dart';
import 'views/sub depart/sub_country.dart';
import 'views/sub depart/sub_famous.dart';
import 'views/sub depart/sub_player.dart';

//import 'views/home_view.dart';

main() {
  runApp(WhoOutApp());
}

class WhoOutApp extends StatelessWidget {
  List<Player> data = [];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: Directionality(
      //   textDirection: TextDirection.rtl,
      //   child: ,
      // ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeView(),
        '/sub_player': (context) => const SubPlayer(),
        '/sub_country': (context) => const SubCountry(),
        '/sub_famous': (context) => const SubFamous(),
        '/add_player': (context) => AddPlayers(),
        '/first_command': (context) => FirstCommand(data: data),
        '/scratch': (context) => Scratch(),
      },
    );
  }
}
