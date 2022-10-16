import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:instagram_clone/util/bubble_storeis.dart';
import 'package:instagram_clone/util/userpost.dart';

class UserHome extends StatelessWidget {
  final List people = ['Rahul','Shyam','Raju','Jasmine','Naina','Ash','Rose'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Instagram', style: TextStyle(color: Colors.black),),
            Row(children: [
              Icon(Icons.add),
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: Icon(Icons.favorite),
              ),
              Icon(Icons.share),
            ],)
          ],),
      ),
      body: Column(children: [
        //STORIES
        Container(
          height: 100,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: people.length,
            itemBuilder: (context,index) {
            return BubbleStories(text: people[index]);
        }
          ),
        ),
        //POSTS
        Expanded(
            child: ListView.builder(
              itemCount: people.length,
                itemBuilder: (context, index) {
                return Userpost(
                  name: people[index],
                );
                }
            )
        ),
      ],
      ),
    );
  }
}




