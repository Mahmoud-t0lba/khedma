import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:khedma/servicerequest.dart';

import 'homescreen.dart';

class JopDescription extends StatefulWidget {
  @override
  _JopDescriptionState createState() => _JopDescriptionState();
}

class _JopDescriptionState extends State<JopDescription> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      endDrawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/khedma.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            ListTile(
              title: Padding(
                padding: const EdgeInsets.only(right: 15),
                child: Text(
                  'الصفحه الرئيسية',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),
                  textDirection: TextDirection.rtl,
                ),
              ),
              trailing: Icon(Icons.home),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeScreen(),
                  ),
                );
              },
            ),
            ListTile(
              title: Padding(
                padding: const EdgeInsets.only(right: 15),
                child: Text(
                  'المعلومات الشخصية',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),
                  textDirection: TextDirection.rtl,
                ),
              ),
              trailing: Icon(Icons.person),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Padding(
                padding: const EdgeInsets.only(right: 15),
                child: Text(
                  'عن التطبيق',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),
                  textDirection: TextDirection.rtl,
                ),
              ),
              trailing: Icon(Icons.info),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Padding(
                padding: const EdgeInsets.only(right: 15),
                child: Text(
                  'اتصل بنا',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),
                  textDirection: TextDirection.rtl,
                ),
              ),
              trailing: Icon(Icons.call),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Padding(
                padding: const EdgeInsets.only(right: 15),
                child: Text(
                  'تسجيل خروج',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),
                  textDirection: TextDirection.rtl,
                ),
              ),
              trailing: Icon(Icons.logout),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 13),
              child: Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 4,
                    decoration: BoxDecoration(color: Colors.grey),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Row(
                      children: [
                        IconButton(
                          icon: Icon(
                            Icons.settings,
                            size: 35,
                            color: Colors.grey,
                          ),
                          onPressed: () {},
                        ),
                        Expanded(child: SizedBox()),
                        Padding(
                          padding: const EdgeInsets.only(right: 15),
                          child: Text(
                            'الاعدادات',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
                            textDirection: TextDirection.rtl,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 5),
          child: IconButton(
            icon: Icon(Icons.arrow_back_ios, color: Colors.teal),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        iconTheme: IconThemeData(
          color: Colors.teal,
        ),
        automaticallyImplyLeading: false,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: ListView(
          physics: NeverScrollableScrollPhysics(),
          children: [
            Center(
              child: Text(
                'كهربائي',
                style: TextStyle(
                  color: Colors.teal,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20, left: 20, right: 20),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                  image: DecorationImage(
                    image: AssetImage('assets/images/electrical.jpeg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 15, top: 20, left: 30),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 20, left: 30, bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'الاسم : احمد محمد',
                          style: TextStyle(fontSize: 20, color: Colors.black),
                          textDirection: TextDirection.rtl,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 20, left: 30, bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'السن : 45',
                          style: TextStyle(fontSize: 18, color: Colors.black),
                          textDirection: TextDirection.rtl,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 20, left: 30, bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'العنوان : المنصورة',
                          style: TextStyle(fontSize: 18, color: Colors.black),
                          textDirection: TextDirection.rtl,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 20, left: 30, bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'رقم الهاتف : 01055418359',
                          style: TextStyle(fontSize: 20, color: Colors.black),
                          textDirection: TextDirection.rtl,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 20, left: 30, bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'مدة الوصول : نصف ساعه',
                          style: TextStyle(fontSize: 20, color: Colors.black),
                          textDirection: TextDirection.rtl,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 20, left: 30, bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'قيمة الخدمه : 80',
                          style: TextStyle(fontSize: 18, color: Colors.black),
                          textDirection: TextDirection.rtl,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ServiceRequest(),
                  ),
                );
              },
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 70,
                margin: EdgeInsets.only(left: 30, right: 30, top: 90),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.teal,
                ),
                child: Center(
                  child: Text(
                    'طلب الخدمة',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
