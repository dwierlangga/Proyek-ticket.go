import 'package:flutter/material.dart';

import 'login_screen.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  _StartScreenState createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [Color.fromARGB(255, 12, 0, 82), Color.fromARGB(255, 13, 0, 29)],
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 10),
              child: TweenAnimationBuilder( // Title Animation
                child: Text(
                  "Ticket.go",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 70,
                      height: 1.0,
                      fontFamily: "BebasNeue"),
                ),
                tween: Tween<double>(begin: 0, end: 1),
                duration: Duration(milliseconds: 500),
                builder: (BuildContext context, double _value, child) {
                  return Opacity(
                    opacity: _value,
                    child: Padding(
                      padding: EdgeInsets.only(top: _value * 20),
                      child: child,
                    ),
                  );
                },
              ),
            ),
            Container(
              width: 300,
              height: 300,
              decoration: BoxDecoration(
                
                image: DecorationImage(
                    image: AssetImage('images/1.png'), fit: BoxFit.fill),
              ),
            ),
            TweenAnimationBuilder( // Button Animation
              child: Padding(
                padding:  EdgeInsets.only(bottom: 20),
                child: Container(
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => (LoginScreen())),
                      );
                    },
                    height: 45,
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 100),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    color: Colors.amber,
                    child: Text(
                      'Get Started',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
              ),
              tween: Tween<double>(begin: 0, end: 1),
              duration: Duration(milliseconds: 500),
              builder: (BuildContext context, double _value, child) {
                return Opacity(
                  opacity: _value,
                  child: Padding(
                    padding: EdgeInsets.only(top: _value * 30),
                    child: child,
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
