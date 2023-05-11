import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:inu_bus/models/journey.dart';
import 'package:inu_bus/screens/journey_screen.dart';
import 'package:inu_bus/widgets/user_profile_image.dart';

class journeycard extends StatelessWidget {
  final journey Journey;
  const journeycard({Key? key, required this.Journey}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).push(
        MaterialPageRoute(
            fullscreenDialog:true,
        builder: (_) => journeyscreen(Journey: Journey)
        )
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 6.0),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${Journey.club} 🏠'.toUpperCase(),
                  style: Theme.of(context).textTheme.overline!.copyWith(
                        fontSize: 12.0,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 1.0,
                      ),
                ),
                Text(
                  Journey.name,
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1!
                      .copyWith(fontSize: 15.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 100,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 28.0,
                              top: 24.0,
                              child: UserProfileImage(
                                imageUrl: Journey.Speakers[0].imageURL,
                                size: 48.0,
                              ),
                            ),
                            UserProfileImage(
                              imageUrl: Journey.Speakers[1].imageURL,
                              size: 48.0,
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ...Journey.Speakers.map((e) => Text(
                                  '${e.firstname} ${e.lasttname}💬',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .copyWith(
                                        fontSize: 16.0,
                                      ),
                                )),
                            SizedBox(height: 8,),
                            Text.rich(
                              TextSpan(
                                children: [
                              TextSpan(
                                  text:
                                  '${Journey.Speakers.length + Journey.FoollowedBySpeakers.length + Journey.others.length} ',
                              ),
                              WidgetSpan(child: Icon(
                                CupertinoIcons.person_alt,
                                size: 18,
                                color: Colors.grey,
                              ),
                              ),
                                  TextSpan(
                                    text:
                                    ' /  ${Journey.Speakers.length} ',
                                  ),
                                  WidgetSpan(child: Icon(
                                    CupertinoIcons.chat_bubble_fill,
                                    size: 18,
                                    color: Colors.grey,
                                  ),
                                  ),
                            ],
                            ),
                              style: TextStyle(color: Colors.grey[800]),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
