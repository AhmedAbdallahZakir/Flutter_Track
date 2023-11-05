import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:who_out/views/commant_play/first_command.dart';
import 'package:who_out/widget/custom_avater.dart';
//import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import '../models/player_model.dart';
import '../widget/avater.dart';
import 'add_player_dialog.dart';

class AddPlayers extends StatefulWidget {
  @override
  State<AddPlayers> createState() => _AddPlayersState();
}

class _AddPlayersState extends State<AddPlayers> {
  String value = '';
  int selectedIcon = 0;
  final TextEditingController nameController = TextEditingController();
  // final ImagePicker imagePicker = ImagePicker();

  List<Player> players = [];

  _showDialog() async {
    String result = await showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          //title: const Text('Enter a name of player'),
          content: Column(
            children: [
              Row(children: [
                CustomAvater(image: 'assets/images/av1.png'),
                CustomAvater(image: 'assets/images/av2.png'),
                CustomAvater(image: 'assets/images/av3.png'),
                CustomAvater(image: 'assets/images/av4.jpeg'),
              ]),
              TextField(
                controller: nameController,
                //decoration: const InputDecoration(hintText: "اسم اللاعب"),
              ),
            ],
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Cancel'),
              onPressed: () {
                Navigator.of(context).pop(null);
              },
            ),
            TextButton(
              child: const Text('OK'),
              onPressed: () {
                setState(() {
                  Navigator.of(context).pop(nameController.text);
                  Player player = Player(name: nameController.text);
                  players.add(player);
                  print(players);
                  nameController.clear();
                });
              },
            ),
          ],
        );
      },
    );
    // i must be sure that result is not null by using this check
    if (result != null) {
      setState(() {
        value = result;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      // floating action button
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(
            onPressed: () {
              List<Player> data = players;
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return FirstCommand(data: data);
              }));
            },
            child: const Text('ابدأ اللعب'),
          ),
          ElevatedButton(
            onPressed: () {
              _showDialog();
            },
            child: const Text('أضف لاعب جديد'),
          ),
        ],
      ),
      appBar: AppBar(
        title: Text('إضافة لاعبين'),
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
      body: ListView.builder(
        itemCount: players.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(),
                color: Colors.white,
              ),
              child: ListTile(
                title: Text(
                  players[index].name,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
