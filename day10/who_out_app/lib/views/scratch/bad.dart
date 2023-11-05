// //import 'package:provider/provider.dart';
// import 'package:flutter/material.dart';

// class Player {
//   String name;
//   int iconIndex;
//   Player({required this.name, required this.iconIndex});
// }

// class PlayersProvider extends ChangeNotifier {
//   List<Player> _players = [];
//   List<Player> get players => _players;

//   void addPlayer(Player player) {
//     _players.add(player);
//     notifyListeners();
//   }
// }

// class HomePage extends StatelessWidget {
//   final categories = ["حيوانات", "ملابس", "مشاهير", "دول", "لاعبين"];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('برا السالفة')),
//       body: GridView.builder(
//         itemCount: categories.length,
//         gridDelegate:
//             const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 5),
//         itemBuilder: (context, index) {
//           return ElevatedButton(
//             onPressed: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                     builder: (context) => ChangeNotifierProvider(
//                           create: (context) => PlayersProvider(),
//                           child: CategoryPage(),
//                         )),
//               );
//             },
//             child: Text(categories[index]),
//           );
//         },
//       ),
//     );
//   }
// }

// class CategoryPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('Category')),
//       body: Column(
//         children: <Widget>[
//           Expanded(
//             child: Consumer<PlayersProvider>(
//               builder: (context, playersProvider, child) {
//                 return ListView.builder(
//                   itemCount: playersProvider.players.length,
//                   itemBuilder: (context, index) {
//                     return ListTile(
//                       leading: InkWell(
//                         onTap: () {
//                           // You can handle icon tap here
//                         },
//                         child: Icon(
//                           Icons.person,
//                           size: 50,
//                           color:
//                               playersProvider.players[index].iconIndex == index
//                                   ? Colors.blue
//                                   : Colors.grey,
//                         ),
//                       ),
//                       title: Text(playersProvider.players[index].name),
//                     );
//                   },
//                 );
//               },
//             ),
//           ),
//           ElevatedButton(
//             onPressed: () async {
//               var player = await showDialog<Player>(
//                 context: context,
//                 builder: (BuildContext context) {
//                   return PlayerDialog();
//                 },
//               );
//               if (player != null) {
//                 Provider.of<PlayersProvider>(context, listen: false)
//                     .addPlayer(player);
//               }
//             },
//             child: const Text('أضف لاعباً'),
//           ),
//           // Other buttons and widgets go here
//         ],
//       ),
//     );
//   }
// }

// class PlayerDialog extends StatefulWidget {
//   @override
//   _PlayerDialogState createState() => _PlayerDialogState();
// }

// class _PlayerDialogState extends State<PlayerDialog> {
//   int selectedIcon = 0;
//   final TextEditingController controller = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return AlertDialog(
//       title: const Text('اختر الايقونة ثم ادخل اسم اللاعب'),
//       content: Column(
//         children: [
//           TextField(
//             controller: controller,
//             decoration: const InputDecoration(hintText: "اسم اللاعب"),
//           ),
//           Wrap(
//             children: List<Widget>.generate(5, (index) {
//               return InkWell(
//                 onTap: () {
//                   setState(() {
//                     selectedIcon = index;
//                   });
//                 },
//                 child: Container(
//                   padding: const EdgeInsets.all(10),
//                   child: Icon(
//                     Icons.person, // replace with your icons
//                     color: selectedIcon == index ? Colors.blue : Colors.grey,
//                   ),
//                 ),
//               );
//             }),
//           ),
//         ],
//       ),
//       actions: <Widget>[
//         TextButton(
//           child: const Text('Cancel'),
//           onPressed: () {
//             Navigator.of(context).pop();
//           },
//         ),
//         TextButton(
//           child: const Text('OK'),
//           onPressed: () {
//             Navigator.of(context).pop(
//               Player(name: controller.text, iconIndex: selectedIcon),
//             );
//           },
//         ),
//       ],
//     );
//   }
// }
