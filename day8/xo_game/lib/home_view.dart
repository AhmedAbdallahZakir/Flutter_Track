import 'package:flutter/material.dart';

class XOGame extends StatefulWidget {
  const XOGame({super.key});

  @override
  State<XOGame> createState() => _OXGameState();
}

class _OXGameState extends State<XOGame> {
  bool isX = true;
  List<List<String>> xoBoard =
      List.generate(3, (index) => List.generate(3, (index) => ''));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('XO Game'),
      ),
      body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: xoBoard
              .map(
                (rows) => Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: rows
                        .map(
                          (row) => Container(
                            color: Colors.blue,
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  xoBoard[xoBoard.indexOf(rows)][
                                      xoBoard[xoBoard.indexOf(rows)]
                                          .indexOf(row)] = isX ? 'O' : 'X';
                                  isX = !isX;
                                });
                              },
                              child: Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  color: Colors.black12,
                                  border: Border.all(
                                    color: Colors.black54,
                                    width: 1,
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    row,
                                    style: TextStyle(
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        )
                        .toList()),
              )
              .toList()),
    );
  }
}
