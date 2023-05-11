import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:inu_bus/data.dart';
import 'package:inu_bus/models/journey.dart';
import 'package:inu_bus/widgets/journey_card.dart';
import 'package:inu_bus/widgets/user_profile_image.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.search,
            size: 30,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(
              CupertinoIcons.envelope_open,
              size: 26,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              CupertinoIcons.calendar,
              size: 30,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              CupertinoIcons.bell,
              size: 30,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
          GestureDetector(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: UserProfileImage(
                  size: 30.0,
                  imageUrl: "https://images.unsplash.com/photo-1590086783191-a0694c7d1e6e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=634&q=80",

              ),
            ),
          ),
        ],
      ),
      body: Stack(
        alignment: Alignment.center,
        children: [
          ListView(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 100),
            children: [
              ...journeyList.map((e) => journeycard(Journey: e)),
            ],
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              height: 100,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                    Theme.of(context).scaffoldBackgroundColor.withOpacity(0.1),
                    Theme.of(context).scaffoldBackgroundColor,
                  ])),
            ),
          ),
          Positioned(
            bottom: 50,
            child: ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(
                  CupertinoIcons.add,
                  size: 20,
                  color: Colors.white,
                ),
              label: Text(
                'Start a Journey',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w500),
              ),
               style: ElevatedButton.styleFrom(
                 padding: EdgeInsets.all(12),
                 primary: Theme.of(context).accentColor,
                 shape: const RoundedRectangleBorder(
                   borderRadius: BorderRadius.all(Radius.circular(20)),

                 ),
               ),
            ),
          )
        ],
      ),
    );
  }
}
