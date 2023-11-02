import 'package:counter/model/counter_model.dart';

//import 'package:counter/widget/counter_widget.dart';
import 'package:flutter/material.dart';

import '../widget/couter_item_widget.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List<Count> counters = [];
  int value = 0;
  TextEditingController controller = TextEditingController();
  _showDialog() async {
    String result = await showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Enter a start counter value: '),
          content: TextField(
            controller: controller,
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
                Navigator.of(context).pop(controller.text);
                Count count = Count(valueStart: int.parse(controller.text));
                counters.add(count);
              },
            ),
          ],
        );
      },
    );
    // i must be sure that result is not null by using this check
    if (result != null) {
      setState(() {
        value = int.parse(result);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: IconButton(
          onPressed: () {
            _showDialog();
          },
          icon: Container(
            height: 70,
            width: 70,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(40),
            ),
            child: const Icon(Icons.add),
          ),
        ),
        backgroundColor: Colors.amber[100], // Color(0xff2B475E),
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Counter App'),
        ),
        body: ListView.builder(
          itemCount: counters.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                CounterItem(startValue: value),
              ],
            );
            //
          },
        ));
  }
}
