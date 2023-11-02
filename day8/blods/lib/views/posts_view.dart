import 'package:flutter/material.dart';

class PostsView extends StatelessWidget {
  const PostsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[100],
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Posts'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              iconColor: Colors.white,
              textColor: Colors.red,
              title: const Text('Pellentesque Molestie Luctus'),
              subtitle: const Text('hfew hffhwefjfh fsw fhfwui '),
              leading: Image.asset('assets/images/surfing1.jpg'),
              onTap: () {
                Navigator.pushNamed(context, '/postDetails');
              },
            ),
          ),
          ListTile(
            title: const Text('Pellentesque Molestie Luctus'),
            subtitle: const Text('hfew hffhwefjfh fsw fhfwui '),
            leading: Image.asset('assets/icons/surfing.png'),
            onTap: () {
              Navigator.pushNamed(context, '/postDetails');
            },
          ),
          ListTile(
            title: const Text('Pellentesque Molestie Luctus'),
            subtitle: const Text('hfew hffhwefjfh fsw fhfwui '),
            leading: Image.asset('assets/icons/surfing.png'),
            onTap: () {
              Navigator.pushNamed(context, '/postDetails');
            },
          )
        ],
      ),
    );
  }
}
