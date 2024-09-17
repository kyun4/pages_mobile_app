import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pagesapp/components/button.dart';
import 'package:pagesapp/components/textfield.dart';
import 'package:pagesapp/pages/login.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController firstNameRegistrationController =
      new TextEditingController();
  TextEditingController lastNameRegistrationController =
      new TextEditingController();
  TextEditingController usernameRegistrationController =
      new TextEditingController();
  TextEditingController emailRegistrationController =
      new TextEditingController();
  TextEditingController phoneRegistrationController =
      new TextEditingController();
  TextEditingController passwordRegistrationController =
      new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(children: [
      Container(
          height: 85,
          width: 55,
          margin: const EdgeInsets.only(top: 30, bottom: 5),
          child: Image.asset('assets/images/pageslogo-orange1.png')),
      SizedBox(
          height: 70,
          child: Text('Pages | Signup',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20))),
      Container(
          margin: const EdgeInsets.symmetric(horizontal: 25),
          child: CustomTextField(
              usernameController: firstNameRegistrationController,
              PrefixIconString: 'assets/svg/user-alt-1-svgrepo-com.svg',
              SuffixIconString: '',
              hintTextValue: 'First Name',
              isObscureText: false)),
      SizedBox(height: 10),
      Container(
          margin: const EdgeInsets.symmetric(horizontal: 25),
          child: CustomTextField(
              usernameController: lastNameRegistrationController,
              PrefixIconString: 'assets/svg/user-alt-1-svgrepo-com.svg',
              SuffixIconString: '',
              hintTextValue: 'Last Name',
              isObscureText: false)),
      SizedBox(height: 10),
      Container(
          margin: const EdgeInsets.symmetric(horizontal: 25),
          child: CustomTextField(
              usernameController: usernameRegistrationController,
              PrefixIconString: 'assets/svg/user-alt-1-svgrepo-com.svg',
              SuffixIconString: '',
              hintTextValue: 'Set desired username',
              isObscureText: false)),
      SizedBox(height: 10),
      Container(
          margin: const EdgeInsets.symmetric(horizontal: 25),
          child: CustomTextField(
              usernameController: phoneRegistrationController,
              PrefixIconString: 'assets/svg/mobile-svgrepo-com-main-01.svg',
              SuffixIconString: '',
              hintTextValue: 'Phone',
              isObscureText: false)),
      SizedBox(height: 10),
      Container(
          margin: const EdgeInsets.symmetric(horizontal: 25),
          child: CustomTextField(
              usernameController: usernameRegistrationController,
              PrefixIconString:
                  'assets/svg/email-contact-ui-web-svgrepo-com.svg',
              SuffixIconString: '',
              hintTextValue: 'Email Address',
              isObscureText: false)),
      SizedBox(height: 10),
      Container(
          margin: const EdgeInsets.symmetric(horizontal: 25),
          child: CustomTextField(
              usernameController: passwordRegistrationController,
              PrefixIconString: 'assets/svg/lock-alt-svgrepo-com.svg',
              SuffixIconString: 'assets/svg/eye-svgrepo-com.svg',
              hintTextValue: 'Password',
              isObscureText: true)),
      SizedBox(height: 10),
      GestureDetector(
          onTap: () => {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) {
                  return Login();
                }))
              },
          child: ButtonCustom(ButtonText: 'Register')),
      SizedBox(height: 10),
      Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text('Already have an account? '),
        GestureDetector(
            onTap: () => {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) {
                    return const Login();
                  }))
                },
            child:
                Text('Login', style: TextStyle(fontWeight: FontWeight.bold))),
        Text(' now')
      ])
    ])));
  }
}
