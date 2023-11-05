// class Badge extends StatefulWidget {
//   final String name;
//   final ImageProvider avatar;

//   const Badge({Key? key, required this.name, required this.avatar}) : super(key: key);

//   @override
//   _BadgeState createState() => _BadgeState();
// }

// class _BadgeState extends State<Badge> {
//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       child: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Row(
//           children: [
//             CircleAvatar(
//               backgroundImage: widget.avatar,
//             ),
//             SizedBox(width: 8.0),
//             Text(widget.name),
//           ],
//         ),
//       ),
//     );
//   }
// }



//GestureDetector(
      //   onTap: () {
      //     showModalBottomSheet(
      //       context: context,
      //       builder: (context) => AddPlayerDialog(),
      //     );
      //   },
      //   child: Container(
      //     decoration: BoxDecoration(
      //       borderRadius: BorderRadius.circular(20),
      //       color: Colors.amber[200],
      //       border: Border.all(),
      //     ),
      //     width: 350,
      //     height: 50,
      //     child: const Padding(
      //       padding: EdgeInsets.symmetric(horizontal: 20),
      //       child: Row(
      //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //         children: [
      //           Icon(Icons.add),
      //           Text(
      //             'أضف لاعب جديد',
      //             style: TextStyle(fontSize: 20),
      //           ),
      //         ],
      //       ),
      //     ),
      //   ),
      // )


// function
  /*
  showDialog() async {
    String? result = await showDialog(
      context: context,
      builder: (context) {
        return Expanded(
          child: Column(
            children: [
              // GridView.builder(
              //   scrollDirection: Axis.horizontal,
              //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              //     crossAxisCount: 2, // Number of avatars per row
              //   ),
              //   itemCount: avatarOptions.length,
              //   itemBuilder: (context, index) {
              //     return GestureDetector(
              //       onTap: () {
              //         Navigator.pop(
              //             context, index); // Return the selected index
              //       },
              //       child: Padding(
              //         padding: EdgeInsets.all(16.0),
              //         child: avatarOptions[index],
              //       ),
              //     );
              //   },
              // ),
              Expanded(
                child: ListView.builder(
                  itemCount: avatarOptions.length,
                  itemBuilder: (context, index) {
                    avatarOptions[index];
                  },
                ),
              ),
              AlertDialog(
                title: Text('Enter a Value'),
                content: TextField(
                  controller: controller,
                ),
                actions: <Widget>[
                  TextButton(
                    child: Text('Cancel'),
                    onPressed: () {
                      Navigator.of(context).pop(null);
                    },
                  ),
                  TextButton(
                    child: Text('OK'),
                    onPressed: () {
                      Navigator.of(context).pop(controller.text);
                      print(controller.text);
                    },
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );

    if (result != null) {
      setState(() {
        _value = result;
        print(_value);
      });
    }
  }
       */


      /* 
      _showDialog() async {
    String result = await showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Enter a name of player'),
          content: TextField(
            controller: nameController,
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
      */