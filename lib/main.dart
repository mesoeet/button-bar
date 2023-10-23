import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.lightBlue, // Change background color
        body: const TabBarView(
          children: [
            HomePage(),
            ProfilePage(),
          ],
        ),
        bottomNavigationBar: ConvexAppBar(
          backgroundColor: Colors.pinkAccent, // Change background color
          color: Colors.white,
          items: const [
            TabItem(icon: Icons.home, title: 'Home'),
            TabItem(icon: Icons.people, title: 'Profile'),
          ],
          onTap: (int i) => print('index page$i'),
        ),
      ),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CircleAvatar(
            backgroundImage: AssetImage("images/gt.jpeg"),
            radius: 50.0,
          ),
          Text(
            'SETIA AMANDA08',
            style: GoogleFonts.pacifico(
              fontSize: 35.0,
              color: Colors.black54, // Change text color
              fontWeight: FontWeight.bold,
            ),
          ),
          const Text(
            'STUDENT',
            style: TextStyle(
              fontSize: 20.0,
              letterSpacing: 1.5,
              color: Colors.black54, // Change text color
            ),
          ),
          const Text(
            'Coding & Learning New Things',
            style: TextStyle(
              fontSize: 20.0,
              letterSpacing: 1.5,
              color: Colors.black54, // Change text color
            ),
          ),
          buildInfoRow(Icons.phone_android, '081519605102'),
          buildInfoRow(Icons.email, 'flutter_setiaamanda@umb.ac.id'),
        ],
      ),
    );
  }

  Widget buildInfoRow(IconData icon, String text) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
      color: Colors.white, // Change background color
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Icon(
              icon,
              color: Colors.blueGrey,
            ),
          ),
          Text(
            text,
            style: const TextStyle(color: Colors.blueGrey, fontSize: 20.0),
          ),
        ],
      ),

    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Image(
        image: AssetImage("images/LOGO_umb.png"),
      ),
    );
  }
}