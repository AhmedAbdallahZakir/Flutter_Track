// import 'package:flutter/material.dart';

// class SelectableAvatar extends StatefulWidget {
//   const SelectableAvatar({Key? key, this.url}) : super(key: key);
//   final String? url;

//   @override
//   State<SelectableAvatar> createState() => _SelectableAvatarState();
// }

// class _SelectableAvatarState extends State<SelectableAvatar> {
//   List<String> avatarOptions = [
//     'assets/images/av1.png',
//     'assets/images/av2.png',
//     'assets/images/av3.png',
//     'assets/images/av4.png',
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return FocusScope(
//       child: Focus(
//         child: Builder(builder: (context) {
//           final FocusNode focusNode = Focus.of(context);
//           final bool hasFocus = focusNode.hasFocus;
//           return GestureDetector(
//             onTap: () {
//               if (hasFocus) {
//                 focusNode.unfocus();
//               } else {
//                 focusNode.requestFocus();
//               }
//             },
//             child: _renderAvatar(hasFocus),
//           );
//         }),
//       ),
//     );
//   }

//   Widget _renderAvatar(bool hasFocus) {
//     final uri = widget.url != null ? Uri.tryParse(widget.url!) : null;
//     final useDefault = uri == null;

//     ImageProvider getProvider() {
//       if (useDefault) {
//         return const AssetImage('assets/images/av1.png');
//       }
//       return NetworkImage(widget.url!);
//     }

//     // Render base on hasFocus state
//     // return AnimatedContainer(
//     //   duration: const Duration(milliseconds: 100),
//     //   width: hasFocus ? 120 : 100,
//     //   height: hasFocus ? 120 : 100,
//     //   decoration: BoxDecoration(
//     //     shape: BoxShape.circle,
//     //     border: Border.all(
//     //       width: hasFocus ? 5 : 3,
//     //       color: hasFocus ? Colors.blue : Colors.black,
//     //     ),
//     //   ),
//     //   child: CircleAvatar(
//     //     foregroundColor: Colors.white,
//     //     backgroundImage: getProvider(),
//     //   ),
//     // );
//   }
// }
