import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

Widget textField({String hint, bool secure, Icon icon, Icon icon2}) {
  return Padding(
    padding: const EdgeInsets.only(left: 25, right: 25, top: 10, bottom: 10),
    child: TextFormField(
      textAlign: TextAlign.right,
      obscureText: secure,
      decoration: InputDecoration(
        prefixIcon: icon,
        suffixIcon: icon2,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.teal),
        ),
        fillColor: Colors.white,
        filled: true,
        hintText: hint,
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
  );
}
