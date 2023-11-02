import 'package:flutter/material.dart';

class CounterItem extends StatefulWidget {
  int startValue;

  CounterItem({required this.startValue});

  @override
  State<CounterItem> createState() => _CounterItemState(startValue: startValue);
}

class _CounterItemState extends State<CounterItem> {
  int startValue;
  _CounterItemState({required this.startValue});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        elevation: 4.0,
        margin: EdgeInsets.symmetric(
          horizontal: 100,
          vertical: 20,
        ),
        child: Column(
          children: <Widget>[
            Container(
              height: 50,
              child: ListTile(
                title: Text(
                  '${startValue}',
                  style: TextStyle(fontSize: 35),
                ),
                // trailing: Text('dfkff'),
              ),
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      startValue++;
                    });
                  },
                  child: const Icon(Icons.add),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      startValue--;
                    });
                  },
                  child: const Icon(Icons.remove),
                  // label: Text('Decrement'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
