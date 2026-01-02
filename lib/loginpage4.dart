import 'package:flutter/material.dart';
import 'package:smartgardenapp/loginpage5.dart';

class Loginpage4 extends StatefulWidget {
  const Loginpage4({super.key});

  @override
  State<Loginpage4> createState() => _Loginpage4State();
}
bool password=true;
class _Loginpage4State extends State<Loginpage4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0C9359),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 120,left: 24,right: 20),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Welcome back',style: TextStyle(
                fontSize: 32,fontWeight: FontWeight.w500,color: Colors.white
              ),),
              Text('Let’s get back to growing your Aepod plants, shall we?',style: TextStyle(
                fontSize: 18,fontWeight: FontWeight.w400,color: Colors.white
              ),),
              SizedBox(height: 47,),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Email Address',hintStyle: TextStyle(
                    fontSize: 18,fontWeight: FontWeight.w400,color: Colors.white,
                    
                  ),prefixIcon: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.email_outlined,color: Colors.white,),
                  ),
                  focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                  enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white))
                ),
              ),
              SizedBox(height: 32,),
                   TextField(
                    obscureText: password,
                decoration: InputDecoration(
                  hintText: 'Password',hintStyle: TextStyle(
                    fontSize: 18,fontWeight: FontWeight.w400,color: Colors.white,
                    
                  ),prefixIcon: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset('assets/Frame.png',height: 24,width: 24,)
                  ),
                  focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                  enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                  suffixIcon: GestureDetector(
                    onTap: () {
                      setState(() {
                        password=!password;
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset('assets/Vector (11).png',height: 24,width: 24,),
                    ))
                ),
              ),
              SizedBox(height: 16,),
              Text('Forgot your password?',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700,color: Colors.white),),
              SizedBox(height: 48,),
              Text('Or Login using social media',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.white),),
              SizedBox(height: 24,),
              Row(
                children: [
                  Container(
                 height: 56,
                 width: 175,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Colors.white,width: 2)
                    ),
                       child: Row(
                         children: [
                           Padding(
                             padding: const EdgeInsets.all(8.0),
                             child: Image.asset('assets/Frame (1).png',height: 24,width: 24,),
                           ),
                           Text('Facebook',style: TextStyle(
                            color: Colors.white,fontSize: 18,fontWeight: FontWeight.w700,
                           ),)
                         ],
                       )
                  ),
                  SizedBox(width: 16,),
                  Container(
                    height: 56,
                    width: 175,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Colors.white,width: 2)
                    ),
                       child: Row(
                         children: [
                           Padding(
                             padding: const EdgeInsets.all(8.0),
                             child: Image.asset('assets/Frame (2).png',height: 24,width: 24,),
                           ),
                           Text('Google',style: TextStyle(
                            color: Colors.white,fontSize: 18,fontWeight: FontWeight.w700,
                           ),)
                         ],
                       )
        
                  )
                ],
              ),
              SizedBox(
                height: 127,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_)=>Loginpage5()));
                },
                child: Container(
                  width: 366,
                  height: 52,
                  color: Colors.white,
                        
                  child: Center(
                    child: Text('Login',style: TextStyle(
                      fontSize: 18,fontWeight: FontWeight.w700,color: Color(0xff0C9359)
                    ),),
                  ),
                ),
              ),
              Text('',style: TextStyle(
                fontSize: 18,fontWeight: FontWeight.w700,color: Colors.white
              ),)
            ],
          ),
        ),
      ),
    );
  }
}