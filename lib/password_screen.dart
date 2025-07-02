import 'package:flutter/material.dart';
class PasswordScreen extends StatelessWidget {
  const PasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              SizedBox(height: 30,),
              Row(
                children: [
                  Text("Forget",style: TextStyle(
          fontWeight: FontWeight.w600,
              fontSize: 36
          ),),
                ],
              ),
              Row(
                children: [
                  Text("Password?",style: TextStyle(
              fontWeight: FontWeight.w600,
                  fontSize: 36
              ),),
                ],
              ),
              SizedBox(height: 30,),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Enter Your Email",
                  prefixIcon: Icon(Icons.mail),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12)
                  ),
                ),
              ),
              SizedBox(height: 30,),
              Row(
                children: [
                  Expanded(child: Text("We will send you a message to set or rest the new password"))
                ],
              ),
              SizedBox(height: 30,),
              Container(
                height: 55,
                width: 317,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Color(0xffF83758),
                ),
                child: Center(
                  child: Text("Submit",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
