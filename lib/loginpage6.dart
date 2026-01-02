import 'package:flutter/material.dart';

class Loginpage6 extends StatefulWidget {
  const Loginpage6({super.key});

  @override
  State<Loginpage6> createState() => _Loginpage6State();
}

class _Loginpage6State extends State<Loginpage6> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0C9359),
      body: Padding(
        padding: const EdgeInsets.only(top: 120, left: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Let’s set you up',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
            Text(
              'Sync your Aepods with the app for added functionality',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 40),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(left: 12,top: 20,right: 10),
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text('Upstairs Pod',style: TextStyle(
                          fontSize: 21,fontWeight: FontWeight.w600,color: Colors.white
                        ),),
                      SizedBox(
                        width: 136,
                      ),
                        Text('Synced',style: TextStyle(
                          color: Colors.white

                        ),),
                        SizedBox(
                          width: 4,
                        ),
                        Image.asset('assets/Vector (13).png',height: 24,width: 24,)
                      ],
                    ),
                    Column(
                      children: [
                        Text('ID: 1344295024',style: TextStyle(color: Colors.white),),
                      ],
                    )
                  ],
                ),
              ),
              height: 85,
              width: 374,
              color: Color(0xfffffffff).withAlpha(50)
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(left: 12,top: 20),
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text('Porch Pod',style: TextStyle(
                          fontSize: 21,fontWeight: FontWeight.w600,color: Colors.white
                        ),),
                         SizedBox(
                      width: 160,
                    ),
                    
                         Text('Synced',style: TextStyle(
                      color: Colors.white
                    
                    ),),
                    SizedBox(
                      width: 4,
                    ),
                         Image.asset('assets/Vector (13).png',height: 24,width: 24,)
                                  
                      ],
                    ),
                    Text('ID: 1344295024',style: TextStyle(
                      color: Colors.white
                    ),)
                  ],
                ),
              ),
              height: 85,
              width: 374,
              color: Color(0xffffffff).withAlpha(50)
            ),
            SizedBox(
              height: 12,
            ),
             Container(
              child: Padding(
                padding: const EdgeInsets.only(left: 12,top: 10,bottom: 10),
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text('Sync new Aepod',style: TextStyle(
                          fontSize: 21,fontWeight: FontWeight.w600,color: Colors.white
                        ),),
                        SizedBox(
                          width: 150,
                        ),
                    Image.asset('assets/Vector (14).png',height: 24,width: 24,)

                      ],
                      
                    ),
                    
                  ],
                ),
              ),
              height: 56,
              width: 374,
              color: Color(0xffffffff).withAlpha(50)
            ),
            SizedBox(
              height: 269,
            ),
            Container(
              width: 366,
              height: 52,
              color: Colors.white,
              child:Center(
                child: Text('Continue',style: TextStyle(
                  color: Color(0xff0C9359),fontSize: 18,fontWeight: FontWeight.w700
                ),),
              ),

            )
          ],
        ),
      ),
    );
  }
}
