import 'package:flutter/material.dart';
import 'package:trialdayflutter/src/widget/custom_clippath.dart';

class SwitcPages extends StatefulWidget {
  final String loginData;

  SwitcPages({this.loginData});
  @override
  _SwitcPagesState createState() => _SwitcPagesState();
}

class _SwitcPagesState extends State<SwitcPages> {
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
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 32.0, horizontal: 10.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        IconButton(
                            icon: Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            }),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      widget.loginData,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.2),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
