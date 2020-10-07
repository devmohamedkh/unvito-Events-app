import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:unvito/models/days.dart';
import '../../constantes.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorCode('#102733'),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            margin: EdgeInsets.only(top: 20),
            padding: EdgeInsets.only(left: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppBar(),
                SizedBox(height: 25),
                TitelWethPhoto(),
                SizedBox(height: 25),
                DayCard(),
                Text(
                  'All Events',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                SizedBox(height: 25),
                Container(
                  height: 100,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      EventsCard(
                        title: 'Concert',
                        icon: 'assets/icons/vois.svg',
                      ),
                      SizedBox(width: 25),
                      EventsCard(
                        title: 'Sports',
                        icon: 'assets/icons/ping-pong.svg',
                      ),
                      SizedBox(width: 25),
                      EventsCard(
                        title: 'Education',
                        icon: 'assets/icons/collegegraduation.svg',
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 25),
                Text(
                  'Popular Events',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                SizedBox(height: 25),
                PopularEventsCard(),
                SizedBox(height: 25),
                PopularEventsCard(),
                SizedBox(height: 25),
                PopularEventsCard(),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 80,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
                icon: SvgPicture.asset('assets/icons/Home.svg'),
                onPressed: () {}),
            IconButton(
                icon: SvgPicture.asset('assets/icons/searchh.svg'),
                onPressed: () {}),
            IconButton(
                icon: SvgPicture.asset('assets/icons/Star.svg'),
                onPressed: () {})
          ],
        ),
      ),
    );
  }
}

class PopularEventsCard extends StatelessWidget {
  const PopularEventsCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: 364,
      decoration: BoxDecoration(
          color: kPrimaryColor, borderRadius: BorderRadius.circular(15)),
      child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15, top: 15),
                    child: Text(
                      'Sports Meet in Galaxy Field',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Row(
                  children: [
                    SvgPicture.asset('assets/icons/bag.svg'),
                    SizedBox(width: 10),
                    Text(
                      'Jan 12, 2019',
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 25),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Row(
                  children: [
                    SvgPicture.asset('assets/icons/location.svg'),
                    SizedBox(width: 10),
                    Text(
                      'Greenfields, Sector 42, Faridabad',
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ],
                ),
              )
            ],
          ),
          Expanded(
              child: Image.asset(
            'assets/images/photo.png',
            fit: BoxFit.fill,
          ))
        ],
      ),
    );
  }
}

class EventsCard extends StatelessWidget {
  const EventsCard({
    Key key,
    this.title,
    this.icon,
  }) : super(key: key);
  final String title, icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 130,
      decoration: BoxDecoration(
          color: kPrimaryColor, borderRadius: BorderRadius.circular(10)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(icon),
          SizedBox(height: 10),
          Text(
            title,
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
          )
        ],
      ),
    );
  }
}

class DayCard extends StatelessWidget {
  const DayCard({
    Key key,
  }) : super(key: key);

  final int isSelcted = 2;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 67,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: days.length,
        itemBuilder: (context, index) {
          final Day day = days[index];
          return Container(
            margin: EdgeInsets.all(7),
            width: 50,
            //   padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: index == isSelcted
                    ? colorCode('FFA700')
                    : Colors.transparent,
                borderRadius: BorderRadius.circular(10)),
            child: Center(
              child: Column(
                children: [
                  Text(
                    day.namber,
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  Text(
                    day.day,
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

///////////////////////////////////////////////////////

class TitelWethPhoto extends StatelessWidget {
  const TitelWethPhoto({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hello, Geralt !',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            SizedBox(height: 5),
            Text(
              "Let's explore what’s happening nearby",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
            ),
          ],
        ),
        Row(
          children: [
            Container(
              height: 54,
              width: 54,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: Image.asset(
                'assets/images/photo.png',
                fit: BoxFit.fill,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class AppBar extends StatelessWidget {
  const AppBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SvgPicture.asset('assets/icons/LOGOname.svg'),
        Row(
          children: [
            IconButton(
              icon: SvgPicture.asset('assets/icons/Search.svg'),
              onPressed: () {},
            ),
            IconButton(
              icon: SvgPicture.asset('assets/icons/menu.svg'),
              onPressed: () {},
            ),
          ],
        )
      ],
    );
  }
}
