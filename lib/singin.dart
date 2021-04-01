import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:khedma/signup.dart';
import 'package:khedma/widget/text_field.dart';
import 'homescreen.dart';

class SingInScreen extends StatefulWidget {
  @override
  _SingInScreenState createState() => _SingInScreenState();
}

class _SingInScreenState extends State<SingInScreen> {
  // ignore: non_constant_identifier_names
  var Checkbox1 = false;
  // ignore: non_constant_identifier_names
  void CheckboxChange(bool val) {
    setState(
      () {
        Checkbox1 = val;
      },
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: ListView(
          physics: NeverScrollableScrollPhysics(),
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 55, bottom: 100),
              child: Center(
                child: Text(
                  'تسجيل الدخول',
                  style: TextStyle(
                    color: Colors.teal,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            textField(hint: 'الايميل / رقم الهاتف', secure: false),
            SizedBox(height: 30),
            textField(hint: 'كلمة السر', secure: true),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 45, right: 25),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SingUpScreen(),
                        ),
                      );
                    },
                    child: Text(
                      'هل نسيت كلمة السر ؟',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Expanded(child: SizedBox()),
                  Row(
                    children: [
                      Text(
                        'تذكرني',
                        style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Checkbox(value: Checkbox1, onChanged: CheckboxChange),
                    ],
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => HomeScreen(),
                  ),
                );
              },
              child: Container(
                margin: EdgeInsets.only(
                    left: 50,
                    right: 50,
                    top: MediaQuery.of(context).size.height * 0.15),
                width: MediaQuery.of(context).size.width,
                height: 70,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.teal),
                child: Center(
                  child: Text(
                    'تسجيل الدخول',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15, left: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SingUpScreen(),
                        ),
                      );
                    },
                    child: Text(
                      'انشاء حساب',
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          textBaseline: TextBaseline.alphabetic),
                    ),
                  ),
                  SizedBox(width: 20),
                  Text(
                    'أليس لديك حساب ؟',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
