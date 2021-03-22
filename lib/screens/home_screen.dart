import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_clubhouse_ui/widgets/widgets.dart';
import 'package:flutter_clubhouse_ui/data.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            CupertinoIcons.search,
            size: 28,
          ),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: const Icon(
              CupertinoIcons.envelope,
              size: 28,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(
              CupertinoIcons.calendar,
              size: 28,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(
              CupertinoIcons.bell,
              size: 28,
            ),
            onPressed: () {},
          ),
          GestureDetector(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 10.0, 20.0, 10.0),
              child: UserProfileImage(
                imageUrl: currentUser.imageUrl,
                size: 36,
              ),
            ),
          ),
        ],
      ),
      body: Stack(
        alignment: Alignment.center,
        children: [
          ListView(
            padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 120.0),
            children: [
              UpcomingRooms(upcomingRooms: upcomingRoomsList),
              const SizedBox(
                height: 12,
              ),
              ...roomsList.map((e) => RoomCard(room: e)),
            ],
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 100.0,
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
            bottom: 60.0,
            child: Container(
              padding: const EdgeInsets.all(12.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24.0),
                  color: Theme.of(context).accentColor),
              child: const Text.rich(
                TextSpan(
                  children: [
                    WidgetSpan(
                        child: Icon(
                      CupertinoIcons.add,
                      size: 21.0,
                      color: Colors.white,
                    )),
                    TextSpan(
                        text: 'Start a room',
                        style: TextStyle(color: Colors.white, fontSize: 20.0)),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 60,
            right: 40,
            child: Stack(
              alignment: Alignment.center,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      CupertinoIcons.circle_grid_3x3_fill,
                    )),
              Positioned(
                  right: 5.7,
                  bottom: 11.9,
                  child: Container(
                    height: 16.0,
                    width: 16.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Theme.of(context).accentColor,
                    ),
                  ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
