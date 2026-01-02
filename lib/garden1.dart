import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:smartgardenapp/garden2.dart';

class Garden1 extends StatefulWidget {
  const Garden1({super.key});

  @override
  State<Garden1> createState() => _Garden1State();
}

final List<String> images = [
  'assets/Rectangle 28.png',
  'assets/Rectangle 28.png',
  'assets/Rectangle 28.png',
];
bool islighton=true;
bool islightoff=true;
final List<Widget> imagesSliders = images
    .map(
      (item) => ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Image.asset(item, fit: BoxFit.cover, width: double.infinity),
      ),
    )
    .toList();

class _Garden1State extends State<Garden1> {
  int _currentIndex = 0; // ✅ Move inside state

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffEBFCF8),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 64, left: 24, right: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // HEADER
              Row(
                children: [
                  const Text('Hello, Isaac 🌿', style: TextStyle(fontSize: 32)),
                  const Spacer(),
                  SizedBox(
                    height: 32,
                  ),
                  Image.asset('assets/Vector (15).png', height: 19, width: 20),
                ],
              ),
              const SizedBox(height: 24),
        
              // STACK (Carousel + Overlay)
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Column(
                    children: [
                      // Carousel
                      CarouselSlider(
                        options: CarouselOptions(
                          height: 216,
                          enlargeCenterPage: true,
                          enableInfiniteScroll: false,
                          autoPlay: true,
                          viewportFraction: 0.85,
                          onPageChanged: (index, reason) {
                            setState(() {
                              _currentIndex = index; // update dots
                            });
                          },
                        ),
                        items: imagesSliders,
                      ),
        
                      const SizedBox(height: 60),
        
                      // DOTS INDICATOR
                    ],
                  ),
        
                  Positioned(
                    bottom: 30,
                    left: 45,
                    child: Container(
                      height: 90,
                      width: 304,
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                          top: 20,
                          left: 16,
                          right: 16,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                const Text(
                                  'Charlie’s Garden',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const Spacer(),
                                GestureDetector(
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (_)=>Garden2()));
                                },
                                  child: Image.asset(
                                    'assets/Group 10.png',
                                    height: 32,
                                    width: 32,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 8),
                            Text(
                              'ID: 1344295024',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.black.withOpacity(0.5),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Center(
                child: DotsIndicator(
                  dotsCount: images.length,
                  position: _currentIndex.toDouble(),
                  decorator: DotsDecorator(
                    activeColor: Colors.green,
                    size: const Size(8, 8),
                    activeSize: const Size(18, 8),
                    activeShape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Row(
                  children: [
                    Container(
                      height: 114,
                      width: 114,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 12, top: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              'assets/Frame (4).png',
                              height: 24,
                              width: 24,
                            ),
                            SizedBox(height: 12),
                            Text(
                              'Humidity',
                              style: TextStyle(
                                color: Colors.black.withOpacity(0.5),
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              '74%',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 8),
                    Container(
                      height: 114,
                      width: 114,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 12, top: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              'assets/Frame (5).png',
                              height: 24,
                              width: 24,
                            ),
                            SizedBox(height: 12),
                            Text(
                              'Temperature',
                              style: TextStyle(
                                color: Colors.black.withOpacity(0.5),
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              '23°c',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ),
                      
                    ),
                    SizedBox(width: 8),
                    Container(
                         height: 114,
                      width: 114,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 12, top: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              'assets/Frame (6).png',
                              height: 24,
                              width: 24,
                            ),
                            SizedBox(height: 12),
                            Text(
                              'Water Level',
                              style: TextStyle(
                                color: Colors.black.withOpacity(0.5),
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              '85%',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ),
                   
                   
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Row(
                children: [
                  Container(
                    height: 114,
                    width: 114,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 12,left: 12),
                      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 16,left: 12),
                            child: Image.asset('assets/Frame (7).png',height: 24,width: 24,),
                          ),
                          Text('Connectivity',style: TextStyle(
                            fontSize: 14,fontWeight: FontWeight.w400,color: Colors.black.withOpacity(0.5)
                          ),),
                          SizedBox(
                            height: 10,
                          ),
                          Text('Online',style: TextStyle(
                            fontSize: 16,fontWeight: FontWeight.w700,color: Colors.black
                          ),)
                        ],
                      ),
                    ),
        
                  ),
        SizedBox(
                    width: 8,
                  ),
                  Container(
                    height: 114,
                    width: 236,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 12,left: 12),
                      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Nutrient Level',style: TextStyle(
                                fontSize: 14,fontWeight: FontWeight.w400,color: Colors.black.withOpacity(0.5)
                              ),),
                              SizedBox(
                                height: 14,
                              ),
                          Row(
                            children: [
                               Image.asset('assets/Frame (8).png',height: 24,width: 24,),
                               SizedBox(
                                width: 8,
                               ),
                          Text('5 grams left',style: TextStyle(
                            fontSize: 16,fontWeight: FontWeight.w700,color: Colors.black
                          ),)
                            ],
                          ),
                          SizedBox(height: 12,),
                         Row(
                           children: [
                             Image.asset('assets/Frame (9).png',height: 24,width: 24,),
                             SizedBox(
                              width: 8,
                             ),
                             Text('Refill in 2 days',style: TextStyle(
                            fontSize: 16,fontWeight: FontWeight.w700,color: Colors.black
                          ),)
                           ],
                         )
                        ],
                      ),
                    ),
                    
        
                  ),
                  
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  Container(
                    height: 114,
                    width: 236,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12)
                  ),
                  
                   child: Padding(
                          padding: const EdgeInsets.only(top: 12,left: 12),
                          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Status',style: TextStyle(
                                    fontSize: 14,fontWeight: FontWeight.w400,color: Colors.black.withOpacity(0.5)
                                  ),),
                                  SizedBox(
                                    height: 14,
                                  ),
                              Row(
                                children: [
                                   Image.asset('assets/Frame (10).png',height: 24,width: 24,),
                                   SizedBox(
                                    width: 8,
                                   ),
                              Text('6 plants growing',style: TextStyle(
                                fontSize: 16,fontWeight: FontWeight.w700,color: Colors.black
                              ),)
                                ],
                              ),
                              SizedBox(height: 12,),
                             Row(
                               children: [
                                 Image.asset('assets/Frame (11).png',height: 24,width: 24,),
                                 SizedBox(
                                  width: 8,
                                 ),
                                 Text('Next harvest in 3 days',style: TextStyle(
                                fontSize: 16,fontWeight: FontWeight.w700,color: Colors.black
                              ),),
          
                               ],
                             ),
                            
                  
                            ],
                          ),
                        ),
                      ),
         SizedBox(
                              width: 8,
                             ),
                GestureDetector(
                  onTap: () {
                    showModalBottomSheet(context: context, builder: (context){
                      return StatefulBuilder( 
                         builder: (context, setModalState) {
        return

                     Container(
                            width: 414,
                          height: 393,
                                            
                          decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(32)
                        
                          ),
                          

                        child:
                        
                         Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child: Padding(
                                padding: const EdgeInsets.only(top: 14),
                                child: Container(
                                  height: 8,
                                  width: 48,
                                  color: Color(0xff06492C).withOpacity(0.25),
                                ),
                              ),
                            ),

                            Center(
                              child: Padding(
                                padding: const EdgeInsets.only( top: 30,bottom: 32),
                                child: Text('Light Status',style: TextStyle(
                                  color: Colors.black,fontSize: 21,fontWeight: FontWeight.w600
                                ),),
                              ),
                            ),
                        
                            SizedBox(
                              width: 400,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 28,right: 28,bottom: 30),
                                child: Divider(
                                  color: Colors.black.withOpacity(0.10),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 32,),
                              child: Row(
                                children: [
                                  Text('Lights',style: TextStyle(
                                    fontSize: 21,fontWeight: FontWeight.w600,color: Color(0xff06492C)
                                  ),),
                                  SizedBox(
                                    width: 230,
                                  ),
                                Switch(
                                  
                                          value: islighton,
                                          activeColor: Colors.white,
                                          activeTrackColor: const Color(0xff1E6F4F),
                                          onChanged: (value) {
                                            setModalState(() {
                                              islighton = value;
                                           
                                            });
                                            setState((
                                
                                            ) {}); // optional: sync parent
                                          },
                                        )
                          
                                   
                               
                        
                              
                        
                        
                                ],
                              ),
                            ),
                               Padding(
                                 padding: const EdgeInsets.only(right: 28,left: 28),
                                 child: Divider(color: Colors.grey.shade300),
                               ),
                             Padding(
                               padding: const EdgeInsets.only(left: 28,right: 28,top: 20),
                               child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                   Row(
                                     children: [
                                       Text('Automatic Settings',style: TextStyle(
                                        color: Color(0xff06492C),fontSize: 21,fontWeight: FontWeight.w600
                                       ),),
                                       SizedBox(
                                        width: 25,
                                       ),
                                       Text('Off at Sunset',style: TextStyle(color: Color(0xff0C9359).withOpacity(0.5)),),
                                       SizedBox(width: 8,),
                                     
                                        Icon(Icons.arrow_forward_ios_sharp,color: Color(0xff0C9359),)
                                     ],
                                   ),
                                   SizedBox(
                                    height: 20,
                                   ),
                                   SizedBox(
                                                               width: 400,
                                     child: Divider(
                                color: Colors.grey.shade300,
                                     ),
                                   ),
                                   Center(
                                     child: Padding(
                                       padding: const EdgeInsets.only(top: 10),
                                       child: Text('Go to Settings',style: TextStyle(
                                        color: Color(0xff0C9359),fontSize: 18,fontWeight: FontWeight.w700
                                       ),),
                                     ),
                                   )
                               
                                 ],
                               ),
                             )
                          ],
                        ),
                        );
                     } );
                    });
                  },
                  child: Container(
                      height: 114,
                      width: 114,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),

                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 12,left: 12),
                        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 10,left: 12),
                              child: Image.asset('assets/Frame (12).png',height: 24,width: 24,),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Text('Light Status',style: TextStyle(
                              fontSize: 14,fontWeight: FontWeight.w400,color: Colors.black.withOpacity(0.5)
                            ),),
                            SizedBox(
                              height: 9,
                            ),
                            Text('On',style: TextStyle(
                              fontSize: 16,fontWeight: FontWeight.w700,color: Colors.black
                            ),)
                          ],
                        ),
                      ),
                  
                    ),
                ),
                      
                      
                ],
              ),
              SizedBox(
                height: 10,
              )
            ]
          )),
      )
    );

  }
}
