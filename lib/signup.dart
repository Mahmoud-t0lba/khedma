import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:khedma/widget/text_field.dart';

import 'homescreen.dart';

class SingUpScreen extends StatefulWidget {
  @override
  _SingUpScreenState createState() => _SingUpScreenState();
}

class _SingUpScreenState extends State<SingUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.only(left: 5),
          child: IconButton(
            icon: Icon(Icons.arrow_back_ios, color: Colors.teal),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        elevation: 0,
        automaticallyImplyLeading: false,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: ListView(
          physics: NeverScrollableScrollPhysics(),
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30, bottom: 30),
                  child: Text(
                    'انشاء حساب',
                    style: TextStyle(
                      color: Colors.teal,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                textField(hint: 'ادخل اسمك', secure: false),
                textField(hint: 'الايميل / رقم الهاتف', secure: false),
                textField(hint: 'كلمة السر', secure: true),
                textField(hint: 'تأكيد كلمة السر', secure: true),
                Padding(
                  padding: const EdgeInsets.only(top: 15, left: 45, right: 25),
                  child: Row(
                    children: [
                      Expanded(child: SizedBox()),
                      Text(
                        'تسجيل الدخول بواسطة الفيسبوك',
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: 15),
                      Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                            image: new DecorationImage(
                              image: AssetImage('assets/images/Facebook.png'),
                              fit: BoxFit.fill,
                            ),
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.teal[50]),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 50, right: 50, top: 70),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(),
                        ),
                      );
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 70,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.teal),
                      child: Center(
                        child: Text(
                          'انشاء حسابك',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
