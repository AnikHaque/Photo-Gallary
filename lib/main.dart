import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeActivity(),
    );
  }
}

class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});

  @override
  Widget build(BuildContext context) {
    // MySnakbar
    MySnakbar(massage, context) {
      return ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(massage)));
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Phot Galary"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(16),
              child: Text("Welcome to My Galary!",style: TextStyle(fontSize: 25),),
            ),
            const Padding(
              padding: EdgeInsets.all(16),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search for photo",
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(
              child: Padding(
                padding: EdgeInsets.all(16),
                child: GridView(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    crossAxisCount: 3,
                  ),
                  shrinkWrap: true,
                  children: [
                    Image.network(
                      'https://i.ibb.co/k1vX89C/product-8.png',
                      width: 100,
                      height: 100,
                    ),
                    Image.network(
                      'https://i.ibb.co/k1vX89C/product-8.png',
                      width: 150,
                      height: 150,
                    ),
                    Image.network(
                      'https://i.ibb.co/k1vX89C/product-8.png',
                      width: 50,
                      height: 150,
                    ),
                    Image.network(
                      'https://i.ibb.co/k1vX89C/product-8.png',
                      width: 50,
                      height: 150,
                    ),
                    Image.network(
                      'https://i.ibb.co/k1vX89C/product-8.png',
                      width: 50,
                      height: 150,
                    ),
                    Image.network(
                      'https://i.ibb.co/k1vX89C/product-8.png',
                      width: 50,
                      height: 150,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              child: Column(
                children: [
                  ListTile(
                    leading: Image.network(
                      'https://i.ibb.co/f2fH7sP/product-8-removebg-preview.png',
                      width: 50,
                      height: 50,
                      fit: BoxFit.cover,
                    ),
                    title: Text('Photo 1'),
                    subtitle: Text('description for Photo 1'),
                    onTap: () {
                      // Handle image tap here
                      print('Image tapped');
                    },
                  ),
                  ListTile(
                    leading: Image.network(
                      'https://i.ibb.co/f2fH7sP/product-8-removebg-preview.png',
                      width: 50,
                      height: 50,
                      fit: BoxFit.cover,
                    ),
                    title: Text('Photo 2'),
                    subtitle: Text('description for Photo 2'),
                    onTap: () {
                      // Handle image tap here
                      print('Image tapped');
                    },
                  ),
                  ListTile(
                    leading: Image.network(
                      'https://i.ibb.co/f2fH7sP/product-8-removebg-preview.png',
                      width: 50,
                      height: 50,
                      fit: BoxFit.cover,
                    ),
                    title: Text('Photo 3'),
                    subtitle: Text('description for Photo 3'),
                    onTap: () {
                      // Handle image tap here
                      print('Image tapped');
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),


      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton(onPressed: (){MySnakbar("File Uploaded Success Fully ", context);},
            child: Icon(Icons.upload),
          ),
        ],
      ),
    );
  }
}
