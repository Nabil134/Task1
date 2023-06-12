import 'package:flutter/material.dart';
import 'package:task1/views/login/components/password_field.dart';
import 'package:task1/views/posts/posts.dart';

import 'components/custom_button.dart';
import 'components/userid_text_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            /*first portion start here*/
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image(
                  height: size.height * 0.2,
                  width: size.width * 0.2,
                  image: AssetImage('assets/images/image.png'),
                ),
              ],
            ),
            /*first portion end here*/

            /*second portion start here*/
            Text(
              "Lorem",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueGrey),
            ),
            /*second portion end here*/
            /*third portion start here*/
            Text(
              "IPSUM",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueGrey),
            ),
            /*third portion end here*/
            SizedBox(
              height: 20,
            ),
            /*third portion and email textfield start here*/
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: UserIdTextField(
                userIdHintText: 'Email',
                userIdHintTextColor: Colors.grey,
              ),
            ),

            /*third portion  and email textfield end here*/
            SizedBox(
              height: 20,
            ),
            /*forth portion and password textfield start here*/
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: UserPasswordTextField(
                userpassHintText: 'Password',
                userpassHintTextColor: Colors.grey,
                userPassTextFieldsuffixIcon: Icons.visibility,
                userPassTextFieldsuffixIconColor: Colors.black,
              ),
            ),
            /*forth portion and password textfield   end here*/
            SizedBox(
              height: 20,
            ),
            /*last portion and Custom button start here*/
            CustomButton(handleButtonClick: () {
              loginButtonClickHandler(context);
            }),
            /*last portion and Custom button end here*/
          ],
        ),
      ),
    );
  }
}

loginButtonClickHandler(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => Post()),
  );

  print('Login');
}
