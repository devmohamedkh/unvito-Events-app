import 'package:flutter/material.dart';
import 'package:unvito/constantes.dart';
import 'package:unvito/screens/home%20screen/home_screen.dart';

class AplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: colorCode('#102733'),
      body: Container(
        child: Stack(
          children: [
            Container(
              child: Image.asset(
                'assets/images/UVENTOSPLASH.png',
                height: size.height,
                width: size.width,
                fit: BoxFit.fill,
              ),
            ),
            Positioned(
                top: 303,
                left: 48,
                child: Image.asset('assets/images/logo.png')),
            Positioned(
                top: 380,
                left: 48,
                child: Column(
                  children: [
                    Image.asset('assets/images/appnamee.png'),
                  ],
                )),
            Positioned(
              top: 430,
              left: 48,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'There’s a lot happening around you! Our\nmission is to provide what’s happening\nnear you!',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      letterSpacing: 1,
                    ),
                  ),
                  SizedBox(height: 25),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomeScreen(),
                          ));
                    },
                    child: Row(
                      children: [
                        Text(
                          'Get Started',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            letterSpacing: 1,
                          ),
                        ),
                        SizedBox(width: 17),
                        Image.asset('assets/icons/arro.png')
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
