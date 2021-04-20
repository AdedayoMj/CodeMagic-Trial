import 'package:flutter/material.dart';
import 'package:trialdayflutter/src/widget/switch_page.dart';

class LoginSwitchPage extends StatefulWidget {
  @override
  _LoginSwitchPageState createState() => _LoginSwitchPageState();
}

class _LoginSwitchPageState extends State<LoginSwitchPage> {
  String email = 'Login With Email';
  String phone = 'Login With Phone Number';

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 40,
          ),
          Container(
            height: 50,
            width: 280,
            decoration: BoxDecoration(
              color: Color.fromRGBO(38, 81, 158, 1),
              border: Border.all(
                color: Color.fromRGBO(38, 81, 158, 1),
              ),
              borderRadius: BorderRadius.all(Radius.circular(25.0)),
            ),
            // ignore: deprecated_member_use
            child: TextButton(
              child: Text(
                'Login With Email',
                style: TextStyle(
                    fontSize: 15, color: Colors.white, letterSpacing: 1.2),
              ),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => SwitcPages(
                    loginData: email,
                  ),
                ));
              },
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 50,
            width: 280,
            decoration: BoxDecoration(
              color: Color.fromRGBO(38, 81, 158, 1),
              border: Border.all(
                color: Color.fromRGBO(38, 81, 158, 1),
              ),
              borderRadius: BorderRadius.all(Radius.circular(25.0)),
            ),
            child: TextButton(
              child: Text(
                'Login with Phone Number',
                style: TextStyle(
                    fontSize: 15, color: Colors.white, letterSpacing: 1.2),
              ),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => SwitcPages(
                    loginData: phone,
                  ),
                ));
              },
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25.0, right: 25, top: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'You dont have an account?',
                  style: TextStyle(
                    fontSize: 13,
                    letterSpacing: 1.2,
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    'SignUp',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                        letterSpacing: 1.2),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
