import 'package:flutter/material.dart';

class Readmore extends StatefulWidget {
  const Readmore({super.key});

  @override
  State<Readmore> createState() => _ReadmoreState();
}

class _ReadmoreState extends State<Readmore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 64,left: 24),
          child: Row(
            children: [
              Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(child: Image.asset('assets/Rectangle 57.png',height: 16,width: 64,)),
                  Padding(
                    padding: const EdgeInsets.only(top: 56),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment:CrossAxisAlignment.start,
                          children: [
                            Text('Lemon Balm',style: TextStyle(fontSize: 32,fontWeight: FontWeight.w500,color: Color(0xff111111)),),
                          Text("data"),
                          Text("121 people are growing this 🌿")
                          ],
                        ),
                        Image.asset('assets/image 1 (5).png',height: 120,width: 120,)
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
           
              Row(
  children: [
    Image.asset('assets/Frame 55.png',width: 64,height: 52,),
    SizedBox(width: 12,),
    Container(
      width: 290,
      height: 52,
      color: Color(0xff0C9359),
      child: Center(
        child: Text('Add to Cart',style: TextStyle(
          fontSize: 18,fontWeight: FontWeight.w700,color: Colors.white
        ),),
      ),
    ),
  ],
),
 Text('Description'),
                Text('Lemon Balm is a 50cm to 80cm high perennial herb with a four-edged, branching, sparsely-haired stalk. The opposed leaves, whose stalked stems vary in length, are broadly oval to heart-shaped and have an irregular crenate (rounded teeth) or serrate (small, sharp teeth) edge.')

                ],
                
                ),
               
            ],
          ),
        ),
      ),
    );
  }
}