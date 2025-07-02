import 'package:flutter/material.dart';

class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Setting",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 24)),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Text("Coming Soon",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 24),),
      ),
    );
  }
}