import 'package:flutter/material.dart';

import '../../models/player_model.dart';

class FirstCommand extends StatelessWidget {
  List<Player> data;
  int i = 0;

  FirstCommand({Key? key, required this.data}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const Text(
              'give ',
            ),
            Container(
              child: ElevatedButton(
                  onPressed: () {
                    i++;
                    Navigator.pushNamed(context, '/scratch');
                  },
                  child: const Text('التالي')),
            ),
          ],
        ),
      ),
    );
  }
}
