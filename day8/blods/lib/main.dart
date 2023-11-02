// import 'package:blods/views/posts_view.dart';
// import 'package:flutter/material.dart';

// import 'views/home_view.dart';
// import 'views/post_Detail_view.dart';

// main() {
//   runApp(const BlogsApp());
// }
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('DEBUG'),
          backgroundColor: Colors.black,
        ),
        body: ListView.builder(
          itemCount: 4,
          itemBuilder: (context, index) {
            return Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Pellentesque Molestie Luctus Justo',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      'Phasellus ac felis porttitor, condimentum dui vitae, tempor...',
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                    SizedBox(height: 8.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Jan. 9, 2021'),
                        Text('3 月'),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.person), label: 'My Account'),
          ],
        ),
      ),
    );
  }
}


// class BlogsApp extends StatelessWidget {
//   const BlogsApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       initialRoute: '/',
//       routes: {
//         '/': (context) => const HomeView(),
//         '/posts': (context) => const PostsView(),
//         '/postDetails': (context) => const PostDetails(),
//       },
//     );
//   }
// }
