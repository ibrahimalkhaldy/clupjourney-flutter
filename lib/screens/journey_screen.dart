import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:inu_bus/data.dart';
import 'package:inu_bus/models/journey.dart';
import 'package:flutter/material.dart';
import 'package:inu_bus/widgets/journey_user_profile.dart';

import '../widgets/user_profile_image.dart';

class journeyscreen extends StatelessWidget {
  final journey Journey;

  const journeyscreen({
    super.key,
    required this.Journey,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leadingWidth: 130,
        leading: TextButton.icon(
            style: TextButton.styleFrom(primary: Colors.black),
            onPressed: () => Navigator.of(context).pop(),
            icon: const Icon(CupertinoIcons.chevron_down),
            label: const Text('Hallway')),
        actions: [
          IconButton(
            icon: Icon(
              CupertinoIcons.doc,
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
                imageUrl:
                    "https://images.unsplash.com/photo-1590086783191-a0694c7d1e6e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=634&q=80",
              ),
            ),
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(40.0),
        ),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '${Journey.club}🏠'.toUpperCase(),
                        style: Theme.of(context).textTheme.overline!.copyWith(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 1.0,
                            ),
                      ),
                      Icon(CupertinoIcons.ellipsis),
                    ],
                  ),
                  Text(
                    Journey.name,
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.0,
                        ),
                  ),
                ],
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.all(14.0),
              sliver: SliverGrid.count(
                crossAxisCount: 3,
                mainAxisSpacing: 20.0,
                children: Journey.Speakers.map((e) => JourneyUserProfile(
                      imageurl: e.imageURL,
                      name: e.firstname,
                      size: 66,
                      isNew: Random().nextBool(),
                      isMuted: Random().nextBool(),
                    )).toList(),
              ),
            ),
            SliverToBoxAdapter(
              child: Text(
                'Followed by Speakers',
                style: Theme.of(context).textTheme.subtitle2!.copyWith(
                      fontSize: 14.0,
                      color: Colors.grey[500],
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.all(14.0),
              sliver: SliverGrid.count(
                crossAxisCount: 4,
                childAspectRatio: 0.7,
                mainAxisSpacing: 15.0,
                children:
                    Journey.FoollowedBySpeakers.map((e) => JourneyUserProfile(
                          imageurl: e.imageURL,
                          name: e.firstname,
                          size: 66,
                          isNew: Random().nextBool(),
                        )).toList(),
              ),
            ),
            SliverToBoxAdapter(
              child: Text(
                'Others in the Journey',
                style: Theme.of(context).textTheme.subtitle2!.copyWith(
                      fontSize: 14.0,
                      color: Colors.grey[500],
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.all(14.0),
              sliver: SliverGrid.count(
                crossAxisCount: 4,
                childAspectRatio: 0.7,
                mainAxisSpacing: 15.0,
                children: Journey.others
                    .map((e) => JourneyUserProfile(
                          imageurl: e.imageURL,
                          name: e.firstname,
                          size: 66,
                          isNew: Random().nextBool(),
                        ))
                    .toList(),
              ),
            ),
            SliverPadding(padding: EdgeInsets.only(bottom: 50)),
          ],
        ),
      ),
      bottomSheet: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        height: 90,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
              onPressed: () {},
              child: Text(
                '✌ Leave quietly',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              style: TextButton.styleFrom(
                padding: EdgeInsets.all(12),
                backgroundColor: Colors.grey[300],
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
              ),
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey[300],
                    ),
                    padding: EdgeInsets.all(6),
                    child: Icon(
                      CupertinoIcons.add,
                      size: 30,
                    ),
                  ),
                ),
                SizedBox(
                  width: 12,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey[300],
                    ),
                    padding: EdgeInsets.all(6),
                    child: Icon(
                      CupertinoIcons.hand_raised,
                      size: 30,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
