import 'package:flutter/material.dart';
import 'package:smartgardenapp/loginpage3.dart';
import 'package:smartgardenapp/loginpage4.dart';

class Loginpage2 extends StatefulWidget {
  const Loginpage2({super.key});

  @override
  State<Loginpage2> createState() => _Loginpage2State();
}
bool password=true;
class _Loginpage2State extends State<Loginpage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0EAD69),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 100,left: 24,right: 24),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Register on Aepod',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  'Create an Aepod account, We can’t wait to have you.',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 48,
                ),
                TextField(
                  decoration: InputDecoration(
                    focusedBorder: UnderlineInputBorder(borderSide:BorderSide(color: Colors.white) ),
                    enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                    focusColor: Colors.white,
                    prefixIcon: Icon(Icons.email_outlined,color: Colors.white,size: 20,),
                    hintText: 'Email Address',hintStyle: TextStyle(
                      fontSize: 18,fontWeight: FontWeight.w400,color: Colors.white,
                      
                    ),
        
                  ),
                ),
                SizedBox(
                  height: 45,
                ),
                TextField(
                  obscureText: password,
                  
                  decoration: InputDecoration(
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset('assets/Frame.png',height: 16,width: 16,),
                    ),
                     focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                     enabledBorder:  UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                    hintText: "Password",hintStyle: TextStyle(
                      fontSize: 18,fontWeight: FontWeight.w400,color: Colors.white
                    ),
                     suffixIcon: Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: GestureDetector(
                        onTap: () {
                          setState(() {
                         password=!password;
                          });
                        },
                        child: Image.asset('assets/Vector (11).png',height: 6,width: 10,)),
                     ),
                     
        
                    
                  
                  ),
                ),
                SizedBox(
                  height: 48,
                ),
                Text('Or Register using social media',style: TextStyle(
                  fontSize: 18,fontWeight: FontWeight.w400,color: Colors.white
                ),),
                SizedBox(
                  height: 24,
                ),
                Row(crossAxisAlignment: CrossAxisAlignment.start,
               
                  children: [
                    Container(
                      width: 170,
                      height: 56,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(color: Colors.white,width: 2)
                      ),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.asset('assets/Frame (1).png',),
                              ),
                              SizedBox(width: 12,),
                              Text('Facebook',style: TextStyle(
                                color: Colors.white
                              ),)
                            ],
                          ),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Container(
                      width: 170,
                      height: 56,
                      decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(16),
                        border: Border.all(color: Colors.white,width: 2)
                      ),
                      child:Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset('assets/Frame (2).png'),
                          ),
                          Text('Google',style: TextStyle(
                            color: Colors.white,
                          ),)
                        ],
                      ) ,
                  
                    )
                  ],
                ),
                SizedBox(
                  height: 120,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_)=>Loginpage3()));
                  },
                  child: Container(
                    width: 366,
                    height: 52,
                   color: Colors.white,
                   child: Center(child: Text('Register',style: TextStyle(color: Color(0xff0C9359),fontSize: 18,fontWeight: FontWeight.w700),)),
                  ),
                ),
                SizedBox(
                  height: 32,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 60,),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (_)=>Loginpage4()));
                    },
                    child: Text('Already have an account? Login',style: TextStyle(
                      color: Colors.white,fontSize: 18,fontWeight: FontWeight.w700
                    ),),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
