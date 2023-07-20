import 'package:flutter/material.dart';

class Drawe extends StatefulWidget {
  const Drawe({super.key});

  @override
  State<Drawe> createState() => _DrawerState();
}

class _DrawerState extends State<Drawe> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.amberAccent[200], // Set the background color here
        child: ListView(
          children: [
            const UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/yellowCar.png'),
              ),
              accountName: Text(
                'Mai',
                style: TextStyle(color: Colors.amber),
              ),
              accountEmail: Text(
                'MaiCar@hotmail.com',
                style: TextStyle(color: Colors.amber),
              ),
            ),
            ListTile(
              title: const Text(
                "Login",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                Navigator.of(context).pushNamed('/login');
              },
            ),
            ListTile(
              title: const Text(
                "Signup",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                Navigator.of(context).pushNamed('/sign');
              },
            ),
            ListTile(
              title: const Text(
                "TodoList",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                Navigator.of(context).pushNamed('/todo');
              },
            ),
          ],
        ),
      ),
    );
  }
}
