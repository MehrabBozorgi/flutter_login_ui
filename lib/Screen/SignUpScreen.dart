import 'package:flutter/material.dart';
import 'package:flutter_login_login/Screen/LoginScreen.dart';
import 'package:flutter_login_login/Widget/ButtonWidget.dart';
import 'package:flutter_login_login/Widget/TextFormWidget.dart';

import '../kConst.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 80),
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                width: 200,
                child: Text(
                  'CREATE NEW ACCOUNT',
                  textAlign: TextAlign.center,
                  style: loginTitle,
                ),
              ),
              SizedBox(height: 20),
              TextFormWidget(
                  icon: Icons.person_outline_rounded, hint: 'UserName'),
              TextFormWidget(icon: Icons.phone, hint: 'Mobile no.'),
              TextFormWidget(
                  icon: Icons.lock_outline_rounded, hint: 'Password'),
              TextFormWidget(
                  icon: Icons.lock_outline_rounded, hint: 'Confirm Password'),
              SizedBox(height: 40),
              ButtonWidget(
                text: 'CREATE',
              ),
              SizedBox(height: 40),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginScreen(),
                    ),
                  );
                },
                child: Text(
                  'Login',
                  style: yellowText,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
