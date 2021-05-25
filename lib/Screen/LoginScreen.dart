import 'package:flutter/material.dart';
import 'package:flutter_login_login/Widget/ButtonWidget.dart';
import 'package:flutter_login_login/Widget/TextFormWidget.dart';
import '../kConst.dart';
import 'SignUpScreen.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 100),
              child: Text('WELCOME BACK', style: loginTitle),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 50),
              child: Text('Login to continue', style: loginSecondTitle),
            ),
            TextFormWidget(
                hint: 'Username', icon: Icons.person_outline_rounded),
            TextFormWidget(hint: 'Password', icon: Icons.lock_outline),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              alignment: Alignment.centerRight,
              width: double.infinity,
              child: Text(
                'forget password ?',
                style: TextStyle(fontSize: 12, color: Colors.grey),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 50),
              child: ButtonWidget(text: 'LOGIN'),
            ),
            Container(
              alignment: Alignment.bottomCenter,
              height: 150,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignUpScreen(),
                    ),
                  );
                },
                child: Text(
                  'Create new account',
                  style: yellowText,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
