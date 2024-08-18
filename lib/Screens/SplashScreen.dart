import 'package:flutter/material.dart';
import 'package:powerzone/AppStyles/AppStyle.dart';
import 'package:powerzone/Screens/HomeScreen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _rotationAnimation;
  late Animation<Offset> _positionAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(seconds: 4),
      vsync: this,
    );

    _rotationAnimation = Tween<double>(begin: 0, end: 2 * 3.14159).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.linear,
      ),
    );

    _positionAnimation = Tween<Offset>(
      begin: Offset.zero,
      end: Offset(-0.3, 0.0), // Move to the left by 30% of the width
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Interval(0.0, 0.5, curve: Curves.easeInOut), // Move left in the first half of the animation
      ),
    );

    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _controller.reverse();
      } else if (status == AnimationStatus.dismissed) {
        _controller.forward();
      }
    });

    _controller.forward();

    // Navigate to the next screen after the animation
    Future.delayed(Duration(seconds: 4), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => HomeScreen()),
      );
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppStyle.appbarcolor,
      body: FadeTransition(
        opacity: _controller,
        child: Container(
          margin: EdgeInsets.only(left: width*0.12,bottom:height*0.08),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Rotating and moving dumbbell icon
              SlideTransition(
                position: _positionAnimation,
                child: RotationTransition(
                  turns: _rotationAnimation,
                  child: Icon(
                    Icons.fitness_center,
                    color: Colors.amber,
                    size: 100.0,
                  ),
                ),
              ),
              SizedBox(height: 10.0), // Reduced space between icon and text
              // Simple text
              Text(
                'Manage Your Gym with Ease',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.amber,
                ),
              ),
              SizedBox(height: 20.0), // Space between text and bottom of screen
            ],
          ),
        ),
      ),
    );
  }
}
