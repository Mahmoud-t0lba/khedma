import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:image_picker/image_picker.dart';
import 'package:khedma/widget/text_field.dart';
import 'package:multi_image_picker/multi_image_picker.dart';
import 'fainallscreen.dart';
import 'dart:io';

class CreditCard extends StatefulWidget {
  @override
  _CreditCardState createState() => _CreditCardState();
}

class _CreditCardState extends State<CreditCard> {
  // ignore: deprecated_member_use
  List<Asset> images = List<Asset>();
  Future loadAssets() async {
    try {
      MultiImagePicker.pickImages(maxImages: 2);
    } catch (e) {}
  }

  // ignore: non_constant_identifier_names
  var Checkbox0 = false;
  // ignore: non_constant_identifier_names
  void CheckboxChange0(bool val) {
    setState(
      () {
        Checkbox0 = val;
      },
    );
  }

  // ignore: unused_field
  File _image;
  final picker = ImagePicker();

  Future getImage(ImageSource src) async {
    final pickedFile = await picker.getImage(source: src);

    setState(
      () {
        if (pickedFile != null) {
          _image = File(pickedFile.path);
        } else {
          print('No Image Selected');
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 5),
          child: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.teal,
            ),
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
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: ListView(
          physics: NeverScrollableScrollPhysics(),
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Center(
                child: Text(
                  'بيانات بطاقة الائتمان',
                  style: TextStyle(
                    color: Colors.teal,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 25, right: 25, top: 10, bottom: 17),
              child: TextFormField(
                textAlign: TextAlign.right,
                decoration: InputDecoration(
                  prefixIcon: GestureDetector(
                    onTap: () {
                      var ad = AlertDialog(
                        title: Text('Choose Picture from:'),
                        content: Container(
                          height: 150,
                          child: Column(
                            children: [
                              Container(
                                height: 150,
                                child: Column(
                                  children: [
                                    Divider(color: Colors.black),
                                    Container(
                                      width: 300,
                                      color: Colors.teal,
                                      child: ListTile(
                                        leading: Icon(Icons.image),
                                        title: Text('Gallery'),
                                        onTap: () {
                                          getImage(ImageSource.gallery);
                                          Navigator.of(context).pop();
                                        },
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Container(
                                      width: 300,
                                      color: Colors.teal,
                                      child: ListTile(
                                        leading: Icon(Icons.add_a_photo),
                                        title: Text('Camera'),
                                        onTap: () {
                                          getImage(ImageSource.camera);
                                          Navigator.of(context).pop();
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                      showDialog(builder: (context) => ad, context: context);
                    },
                    child: Icon(Icons.camera_alt),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.teal),
                  ),
                  hintText: ('امسح بطاقتك ضوئيا'),
                  fillColor: Colors.white,
                  filled: true,
                  hintStyle: TextStyle(color: Colors.grey),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.teal,
                      width: 2.5,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 7),
              child: textField(hint: 'رقم البطاقه', secure: false),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 7),
              child:
                  textField(hint: 'رمز الأمان الخاص بالبطاقة', secure: false),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 7),
              child: textField(hint: 'تاريخ الأنتهاء', secure: false),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 7),
              child: textField(hint: 'الرمز البريدي', secure: false),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 35),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'حفظ بيانات البطاقة لكل مرة',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Checkbox(value: Checkbox0, onChanged: CheckboxChange0),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FainalScreen()),
                );
              },
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 70,
                margin: EdgeInsets.only(left: 35, right: 35, top: 40),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.teal,
                ),
                child: Center(
                  child: Text(
                    'تأكيد طلب الخدمة',
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
