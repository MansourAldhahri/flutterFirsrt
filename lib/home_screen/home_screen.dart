import 'package:flutter/material.dart';
import 'package:flutter_app/utils/drawe.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text('Home Screen'),
        centerTitle: true,
        backgroundColor: Colors.amberAccent[250],
            ),
      backgroundColor: Colors.amberAccent[200],
      drawer: Drawe(),
      body:const Center(
        child:Text("Welcome to Home Screen TO Bull's Rent",
          style: TextStyle(
            color: Colors.white
          ),
            ),

      ),


      );

  }
}

