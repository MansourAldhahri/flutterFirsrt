import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_app/Todo_screen/Todo_item.dart';
import 'package:flutter_app/model/character.dart';
import 'package:flutter_app/model/characterApi.dart';
import 'package:http/http.dart' as http;

import '../utils/drawe.dart';

class TodoApp extends StatefulWidget {
  const TodoApp({super.key});

  @override
  State<TodoApp> createState() => _TodoAppState();
}

class _TodoAppState extends State<TodoApp> {
  List characterList = [];

  void getAllCharacters() async {
    CharacterApi.getCharacter().then((response) {
      setState(() {
        characterList = response;
      });
      print(response);
    });
  }

  @override
  void initState() {
    super.initState();
    getAllCharacters();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Todo List"),
        centerTitle: true,
        elevation: 5,
        backgroundColor: Colors.deepOrange,
      ),
      //connect searchbox with data
      drawer: const Drawe(),
      body: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 15,
        ),
        child: Column(
          children: [
            searchBox(),
            Container(
              margin: EdgeInsets.only(
                top: 50,
                bottom: 20,
              ),
              child: Text(
                'All ToDos',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: characterList.length,
                itemBuilder: (context, index) {
                  return TodoItem(
                    character: characterList[index],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget searchBox() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      child: TextField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(0),
          prefixIcon: Icon(
            Icons.search,
            color: Colors.black,
            size: 20,
          ),
          prefixIconConstraints: BoxConstraints(
            maxHeight: 20,
            maxWidth: 25,
          ),
          border: InputBorder.none,
          hintText: 'Search',
          hintStyle: TextStyle(color: Colors.grey),
        ),
      ),
    );
  }
}
