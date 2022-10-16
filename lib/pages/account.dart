import 'package:flutter/material.dart';
import 'package:instagram_clone/util/accounttab1.dart';
import 'package:instagram_clone/util/accounttab2.dart';
import 'package:instagram_clone/util/accounttab3.dart';
import 'package:instagram_clone/util/accounttab4.dart';
import 'package:instagram_clone/util/bubble_storeis.dart';

class UserAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20.0, top: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //profile picture
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        shape: BoxShape.circle,
                      ),
                    ),
                    //number of posts, follower and following
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Text('237',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16)),
                              Text('Posts'),
                            ],
                          ),
                          Column(
                            children: [
                              Text('3930',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16)),
                              Text('Followers'),
                            ],
                          ),
                          Column(
                            children: [
                              Text('1930',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16)),
                              Text('Following'),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 190.0, top: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'ShiniGami',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5.0),
                      child: Text(
                        'New Flutter Devs',
                        style: TextStyle(color: Colors.black),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Container(
                          padding: EdgeInsets.all(8),
                          child: Center(child: Text('Edit Profile')),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(5)),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Container(
                          padding: EdgeInsets.all(8),
                          child: Center(child: Text('Ad toosl')),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(5)),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Container(
                          padding: EdgeInsets.all(8),
                          child: Center(child: Text('Insights')),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(5)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              //stories
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
                child: Row(
                  children: [
                    BubbleStories(text: 'story 1'),
                    BubbleStories(text: 'story 2'),
                    BubbleStories(text: 'story 3'),
                    BubbleStories(text: 'story 4'),
                  ],
                ),
              ),
              TabBar(tabs: [
                Tab(
                  icon: Icon(Icons.grid_3x3),
                ),
                Tab(
                  icon: Icon(Icons.video_call),
                ),
                Tab(
                  icon: Icon(Icons.shop),
                ),
                Tab(
                  icon: Icon(Icons.person),
                ),
              ]),
              Expanded(
                child: TabBarView(children: [
                  AccountTab1(),
                  AccountTab2(),
                  AccountTab3(),
                  AccountTab4(),
                ]),
              )
            ],
          ),
        ));
  }
}
