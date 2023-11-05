import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class AddPlayerDialog extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();
  final ImagePicker imagePicker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            controller: nameController,
            decoration: InputDecoration(
              hintText: 'Enter player name',
            ),
          ),
          SizedBox(height: 8.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('assets/avatar.png'),
              ),
              SizedBox(width: 8.0),
              TextButton(
                onPressed: () async {
                  final XFile? image =
                      await imagePicker.pickImage(source: ImageSource.gallery);
                  if (image != null) {
                    // Set the avatar image
                  }
                },
                child: Text('Choose Avatar'),
              ),
            ],
          ),
          SizedBox(height: 8.0),
          ElevatedButton(
            onPressed: () {
              // Add the player to the list
              Navigator.pop(context);
            },
            child: Text('Add Player'),
          ),
        ],
      ),
    );
  }
}
