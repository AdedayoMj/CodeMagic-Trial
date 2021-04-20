import 'package:flutter/material.dart';
import 'package:trialdayflutter/src/home/login_switch_page.dart';
import 'package:trialdayflutter/src/widget/custom_clippath.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ClipPath(
            clipper: BackgroundClipper(),
            child: Container(
              height: 280,
              decoration: BoxDecoration(
                color: Color.fromRGBO(38, 81, 158, 1),
              ),
              child: Center(
                child: Text(
                  'CodeMagic Trial',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.2),
                ),
              ),
            ),
          ),
          Expanded(
            child: LoginSwitchPage(),
          ),
        ],
      ),
    );
  }
}
