import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:khedma/widget/text_field.dart';

import 'jobdescription.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
        iconTheme: IconThemeData(
          color: Colors.teal,
        ),
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Center(
              child: Text(
                'اختر الخدمة التي تريدها',
                style: TextStyle(
                  color: Colors.teal,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          textField(
            hint: 'الايميل / رقم الهاتف',
            secure: false,
            icon: Icon(Icons.mic),
            icon2: Icon(Icons.search),
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 1,
                crossAxisSpacing: 1,
              ),
              itemCount: 20,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => JopDescription(),
                      ),
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                      image: DecorationImage(
                        image: AssetImage('assets/images/electrical.jpeg'),
                        fit: BoxFit.fill,
                      ),
                    ),
                    child: Container(
                      width: 100,
                      height: 90,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.black26,
                      ),
                      child: Center(
                        child: Text(
                          'Jop',
                          style: TextStyle(
                            fontSize: 35,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
