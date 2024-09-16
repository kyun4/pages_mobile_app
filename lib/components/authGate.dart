import 'package:flutter/material.dart';
import 'package:pagesapp/pages/login.dart';
import 'package:pagesapp/pages/mainstream.dart';

class AuthGate extends StatefulWidget {
  const AuthGate({super.key});

  @override
  State<AuthGate> createState() => _AuthGateState();
}

class _AuthGateState extends State<AuthGate> {
  @override
  bool isLoggedIn = false;
  @override
  Widget build(BuildContext context) {
    return isLoggedIn ? const MainStream() : const Login();
  }
}
