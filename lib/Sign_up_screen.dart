import 'package:e_commerce/sign_in_screen.dart';
import 'package:flutter/material.dart';
class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}
bool _obscureText = true;

class _SignUpScreenState extends State<SignUpScreen> {
  @override

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body:Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              SizedBox(height: 30,),
              Row(
                children: [
                  Text("Create an",style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 36
                  ),),
                ],
              ),
              Row(
                children: [
                  Text("account",style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 36
                  ),),
                ],
              ),
              SizedBox(height: 30,),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Email or Username",
                  prefixIcon: Icon(Icons.person),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              SizedBox(height: 30,),
              TextFormField(
                decoration: InputDecoration(
                    labelText: "Password",
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: IconButton(
                      icon: Icon(
                        _obscureText ? Icons.visibility_off : Icons.visibility,
                      ),
                      onPressed: () {
                        setState(() {
                          _obscureText = !_obscureText;
                        });
                      },
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    )
                ),
              ),
              SizedBox(height: 30,),
              TextFormField(
                obscureText: _obscureText,
                decoration: InputDecoration(
                    labelText: "Confirm Password",
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: IconButton(
                      icon: Icon(
                        _obscureText ? Icons.visibility_off : Icons.visibility,
                      ),
                      onPressed: () {
                        setState(() {
                          _obscureText = !_obscureText;
                        });
                      },
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    )
                ),
              ),
              SizedBox(height: 10,),
              Row(mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: Text("By clicking the Register button,you agree to the public offer"),
                  )
                ],
              ),
              SizedBox(height: 40,),
              Container(
                height: 55,
                width: 317,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xffF83758),

                ),
                child: Center(
                  child: Text("Create Account ",style: TextStyle(
                      color: Colors.white,
                      fontSize: 20
                  ),),
                ),
              ),
              SizedBox(height: 40,),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('-Or Continue with-')],
              ),
              SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/img/google.png",height: 54,width: 54,),
                  const SizedBox(width: 16),
                  Image.asset("assets/img/apple.png",height: 55,width: 55,),
                  const SizedBox(width: 16),
                  Image.asset("assets/img/facebook.png",height: 56,width: 56,),
                ],
              ),
              SizedBox(height: 15,),
              Row( mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("I already have a account "),
                  GestureDetector(
                    onTap: (){
                        Navigator.pushReplacement(context,MaterialPageRoute(builder: (_)=>SignInScreen()),
                        );
                      },
                    child: Row(
                      children: [
                        Text(" Login",style: TextStyle(
                          color: Color(0xffF83758),

                        ),)
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
