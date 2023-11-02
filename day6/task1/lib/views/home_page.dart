import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Game'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Container(
                  height: 100,
                  width: 127,
                  //color: Colors.blue,
                  decoration: BoxDecoration(
                    border: Border.all(),
                    image: DecorationImage(
                        image: AssetImage('assets/images/Ahmed.jpeg'),
                        fit: BoxFit.cover),
                  ),
                ),
                Container(
                  height: 100,
                  width: 127,
                  //color: Colors.blue,
                  decoration: BoxDecoration(
                    border: Border.all(),
                    image: DecorationImage(
                        image: AssetImage('assets/images/Ahmed.jpeg'),
                        fit: BoxFit.cover),
                  ),
                ),
                Container(
                  height: 100,
                  width: 127,
                  //color: Colors.blue,
                  decoration: BoxDecoration(
                    border: Border.all(),
                    image: DecorationImage(
                        image: AssetImage('assets/images/Ahmed.jpeg'),
                        fit: BoxFit.cover),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  height: 100,
                  width: 127,
                  //color: Colors.blue,
                  decoration: BoxDecoration(
                    border: Border.all(),
                    image: DecorationImage(
                        image: AssetImage('assets/images/Ahmed.jpeg'),
                        fit: BoxFit.cover),
                  ),
                ),
                Container(
                  height: 100,
                  width: 127,
                  //color: Colors.blue,
                  decoration: BoxDecoration(
                    border: Border.all(),
                    image: DecorationImage(
                        image: AssetImage('assets/images/Ahmed.jpeg'),
                        fit: BoxFit.cover),
                  ),
                ),
                Container(
                  height: 100,
                  width: 127,
                  //color: Colors.blue,
                  decoration: BoxDecoration(
                    border: Border.all(),
                    image: DecorationImage(
                        image: AssetImage('assets/images/Ahmed.jpeg'),
                        fit: BoxFit.cover),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  height: 100,
                  width: 127,
                  //color: Colors.blue,
                  decoration: BoxDecoration(
                    border: Border.all(),
                    image: DecorationImage(
                        image: AssetImage('assets/images/Ahmed.jpeg'),
                        fit: BoxFit.cover),
                  ),
                ),
                Container(
                  height: 100,
                  width: 127,
                  //color: Colors.blue,
                  decoration: BoxDecoration(
                    border: Border.all(),
                    image: DecorationImage(
                        image: AssetImage('assets/images/Ahmed.jpeg'),
                        fit: BoxFit.cover),
                  ),
                ),
                Container(
                  height: 100,
                  width: 127,
                  //color: Colors.blue,
                  decoration: BoxDecoration(
                    border: Border.all(),
                    image: DecorationImage(
                        image: AssetImage('assets/images/Ahmed.jpeg'),
                        fit: BoxFit.cover),
                  ),
                ),
              ],
            )
          ],
        ));
  }
}
