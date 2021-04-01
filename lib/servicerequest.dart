import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'creditcard.dart';
import 'widget/text_field.dart';

class ServiceRequest extends StatefulWidget {
  @override
  _ServiceRequestState createState() => _ServiceRequestState();
}

class _ServiceRequestState extends State<ServiceRequest> {
  // ignore: non_constant_identifier_names
  var Checkbox2 = false;
  // ignore: non_constant_identifier_names
  void CheckboxChange2(bool val) {
    setState(
      () {
        Checkbox2 = val;
      },
    );
  }

  // ignore: non_constant_identifier_names
  var Checkbox3 = false;
  // ignore: non_constant_identifier_names
  void CheckboxChange3(bool val) {
    setState(
      () {
        Checkbox3 = val;
      },
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
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
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: ListView(
          physics: NeverScrollableScrollPhysics(),
          children: [
            Center(
              child: Text(
                'طلب الخدمة',
                style: TextStyle(
                  color: Colors.teal,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            textField(hint: 'أدخل اسمك', secure: false),
            textField(hint: 'رقم الهاتف', secure: false),
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 25, top: 10),
              child: TextFormField(
                textAlign: TextAlign.right,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.teal),
                  ),
                  fillColor: Colors.white,
                  filled: true,
                  hintText: 'العنوان بالتفصيل \n '
                      'المدينة / الشارع / رقم الشقة',
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
                maxLines: 6,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  'طريقة الدفع',
                  style: TextStyle(
                    color: Colors.teal,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 35),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'بطاقة ائتمان',
                        style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Checkbox(value: Checkbox2, onChanged: CheckboxChange2),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'الدفع عند الوصول',
                        style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Checkbox(value: Checkbox3, onChanged: CheckboxChange3),
                    ],
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CreditCard()),
                );
              },
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 70,
                margin: EdgeInsets.only(left: 35, right: 35, top: 70),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.teal,
                ),
                child: Center(
                  child: Text(
                    'التالي',
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
