import 'package:flutter/material.dart';
import 'package:smartgardenapp/loginpage2.dart';
import 'package:smartgardenapp/loginpage3.dart';
import 'package:smartgardenapp/loginpage4.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0C9359),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Stack(children:[ Padding(
                padding: const EdgeInsets.only(top: 192,),
                child: Image.asset('assets/Ellipse 1 (Stroke) (1).png',),
              ),
              
              Padding(
                padding: const EdgeInsets.only(right: 24,),
                child: Image.asset('assets/Ellipse 1 (Stroke) (2).png',),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 412),
                child: Image.asset('assets/Ellipse 1 (Stroke) (3).png',height: 360,),
              ),
              
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 64,left: 24),
                    child: Image.asset('assets/logo (1).png',height: 32,width: 32,),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 64),
                    child: Text('AEPOD',style: TextStyle(
                      color: Colors.white,fontSize: 16,fontWeight: FontWeight.w600
                    ),),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 380,left: 24),
                child: Text('Welcome to Aepod',style: TextStyle(
                  color: Colors.white,fontWeight: FontWeight.w500,fontSize: 32
                ),),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 450,left: 24),
                child: Text('Grow plants easily from your home with our award-winning pods',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.white),),
              ),
              SizedBox(height: 178,),
              Padding(
                padding: const EdgeInsets.only(top: 600,left: 24),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_)=>Loginpage2()));
                  },
                  child: Container(
                    height: 52,
                    width: 366,
                    
                  color: Colors.white,
                  child: Center(
                    child: Text('Register',style: TextStyle(
                        fontSize: 18,fontWeight: FontWeight.w700,color: Color(0xff0C9359)
                      ),),
                  ),
                  ),
                ),
          
              ),
              Padding(
                padding: const EdgeInsets.only(top:680 ,left: 24),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_)=>Loginpage4()));
                  },
                  child: Container(
                    height: 52,
                    width: 366,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xffffffff),width: 2),
                      
                    ),
                    child: Center(child: Text('Login',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w700),)),
                  ),
                ),
              )
              
              ])
              
              
            ],
          ),
        ),
      )
    );
  }
}