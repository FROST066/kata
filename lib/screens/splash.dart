import 'package:flutter/material.dart';
import '../utils/constant.dart';

class SpalshScreen extends StatefulWidget {
  const SpalshScreen({super.key});

  @override
  State<SpalshScreen> createState() => _SpalshScreenState();
}

class _SpalshScreenState extends State<SpalshScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: appColor,
      child: Center(
        child: Image.asset("assets/images/logo.png"),
      ),
    );
  }
}
