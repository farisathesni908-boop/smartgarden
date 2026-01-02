import 'package:flutter/material.dart';
import 'package:smartgardenapp/loginpage4.dart';
import 'package:smartgardenapp/loginpage6.dart';

class Loginpage3 extends StatefulWidget {
  const Loginpage3({super.key});

  @override
  State<Loginpage3> createState() => _Loginpage3State();
}

class _Loginpage3State extends State<Loginpage3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold
    
    
    (
      backgroundColor: Color(0xff0EAD69),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 24,top: 120,right: 24),
          child: Column(
            children: [
              Text('Let’s personalize your experience',style: TextStyle(
                fontSize: 32,fontWeight: FontWeight.w500,color: Colors.white
              ),),
              SizedBox(
                height: 16,
              ),
              Text('What can we call you? Could be your name, a nickname or something funny ☺.',style: TextStyle(
                color: Colors.white,fontSize: 18,fontWeight: FontWeight.w400
              ),),
              SizedBox(
                height: 48,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Name',
                  hintStyle: TextStyle(
                    color: Colors.white,fontSize: 18,fontWeight: FontWeight.w400
                  ),
                  
                  focusedBorder: UnderlineInputBorder  ( borderSide: BorderSide(color: Colors.white)),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset('assets/Vector (12).png',width: 17,height: 19,),
                  )
                ),
              ),
              SizedBox(
                height: 100,
              ),
              GestureDetector
              (onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_)=>Loginpage6()));
              },
                child: Container(
                  height: 52,
                  width: 366,
                  color: Colors.white,
                  child: Center(child: Text('Continue',style: TextStyle(color: Color(0xff0C9359),fontSize: 17,fontWeight: FontWeight.w700),)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}