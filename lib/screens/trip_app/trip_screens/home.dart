import 'package:advanced_animation_course/screens/trip_app/components/screenTitle.dart';
import 'package:advanced_animation_course/screens/trip_app/components/tripList.dart';
import 'package:flutter/material.dart';

class HomeTrip extends StatefulWidget {
  @override
  HomeTripState createState() => HomeTripState();
}

class HomeTripState extends State<HomeTrip> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/bg.png"),
              fit: BoxFit.fitWidth,
              alignment: Alignment.topLeft),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(height: 20),
            const SizedBox(
              height: 160,
              child: ScreenTitle(
                text: 'Ninja Trips',
              ),
            ),
            Flexible(
              child: TripList(),
            )
            //Sandbox(),
          ],
        ),
      ),
    );
  }
}
