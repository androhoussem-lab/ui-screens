import 'package:flutter/material.dart';
import 'package:uiscreens/profiles/profile_001/profile.dart';
import 'package:uiscreens/profiles/profile_001/profile_provider.dart';

class Profile01 extends StatefulWidget {
  @override
  _Profile01State createState() => _Profile01State();
}

class _Profile01State extends State<Profile01> {
  @override
  Profile profile = Profile1Provider.getProfile();

  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset(
          'assets/profiles/landscape_1.jpg',
          fit: BoxFit.cover,
          height: MediaQuery.of(context).size.height * 0.45,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            title: Text(
              'PROFILE',
              style: TextStyle(
                  fontFamily: 'SFDisplay',
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.1),
            ),
            centerTitle: true,
            leading: IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {},
            ),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.settings),
                onPressed: () {},
              )
            ],
          ),
        ),
        CustomPaint(
          painter: ProfilePainter(),
          child: Container(

          ),
        ),
        Positioned(
          left: MediaQuery.of(context).size.height * 0.05,
          top: MediaQuery.of(context).size.height * 0.35,
          child: CircleAvatar(
            minRadius: 40,
            backgroundImage: ExactAssetImage('assets/shared/ahmad.png'),
          ),
        )
      ],
    );
  }
}

class ProfilePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path = Path();
    final Paint paint = Paint();
    paint.color = Colors.white;
    path.lineTo(0, size.height * 0.38);
    path.lineTo(size.width, size.height * 0.45);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
