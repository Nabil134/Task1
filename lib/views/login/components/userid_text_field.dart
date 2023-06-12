import 'package:flutter/material.dart';

class UserIdTextField extends StatelessWidget {
  const UserIdTextField({
    required this.userIdHintText,
    required this.userIdHintTextColor,
    super.key,
  });
  final String userIdHintText;
  final Color userIdHintTextColor;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: userIdHintText,
        hintStyle: TextStyle(
          color: userIdHintTextColor,
        ),
        fillColor: Color(0xffF8F9FA),
        filled: true,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xffE4E7EB)),
          borderRadius: BorderRadius.circular(10),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xffE4E7EB)),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
