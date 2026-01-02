import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}
List<Map<String,dynamic>>item=[{
    "images":"assets/Frame (7).png","Title":"Language","status":"English", "trailing":"assets/Vector (22).png"},

    {
      "images":"assets/Frame (12).png","Title":"Currency","status":"USD", "trailing":"assets/Vector (22).png"
  },
  {
      "images":"assets/Vector (17).png","Title":"Temperature Unit","status":"Celsius", "trailing":"assets/Vector (22).png"
  },
  {
    "images":"assets/Vector (21).png","Title":"Sync Settings","status":"", "trailing":"assets/Vector (22).png"
  },
  
   
  
  
  ];
class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:    Color(0xff0C9359).withOpacity(0.20),
      // body: Image.asset('assets/Ellipse 1 (Stroke) (6).png',height: 240,width: 240,),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30,top: 10,),
            child: Stack(
            clipBehavior: Clip.none, // ⭐ IMPORTANT
            children: [
              Image.asset(
          'assets/Ellipse 1 (Stroke) (4).png',
          height: 320,
          width: 320,
              ),
          
              Positioned(
          top: 50,
          left: 220,
          child: Image.asset(
            'assets/Ellipse 1 (Stroke) (4).png',
            height: 240,
            width: 240,
          ),
              ),
          
              Positioned(
          left: -50, // now it will show
          top: 180,
          child: Transform.rotate(
            angle: 30,
            child: Image.asset(
              'assets/Ellipse 1 (Stroke) (8).png',
              height: 240,
              width: 240,
            ),
          ),
              ),
              Positioned(
          bottom: 50,
          child: 
              
              Row(
                children: [
                  Text('Hey, Isaac 🌿',style: TextStyle(fontSize: 32,fontWeight: FontWeight.w500,color: Color(0xff111111),fontStyle: FontStyle.italic)),
                  SizedBox(width: 100,),
                 Image.asset('assets/Group 21 (1).png',height: 40,width: 40,)
                ],
              )),
            ],
          )
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20,),
            child: Container(
              
              width: 374,
              height: 115,
              decoration: BoxDecoration(
                  color:Color.fromARGB(255, 255, 255, 255).withOpacity(0.12),
borderRadius: BorderRadius.circular(12)
              ),
            
              child: Padding(
                padding: const EdgeInsets.only(left: 14),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Row(
                        children: [
                          Image.asset('assets/Vector (23).png',width: 24,height: 24,color: Color(0xff3BCEAC),),
                          SizedBox(width:12 ,),
                                  
                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Text('Visit the Aepod Store',style: TextStyle(
                              fontSize: 21,fontWeight: FontWeight.w600,color: Color(0xff06492C)
                            ),),
                          ),
                       SizedBox(width: 40,),
                          
                      Padding(
                        padding: const EdgeInsets.only(left:16 ),
                        child: 
                        
                            Image.asset('assets/Group 10 (1).png',height: 32,width: 32,),
                        
                                    
                        ),

                             
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 0,
                    ),
                    Divider(
                     height: 0.8,
                      
                            color:Color(0xff06492C).withOpacity(0.1),
                          )  ,
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Text('Buy attachments and supplements for your Aepod. Orders typically arrive in 3 working days'),
                    )
                  ],
                ),
              ),
                 
            ),
          ),
         
         
         Padding(
           padding: const EdgeInsets.only(left: 20,right: 20,top: 0),
           child: Container(
               height: 250,
               width: 374,
            
               decoration: BoxDecoration(
                 
                    borderRadius: BorderRadius.circular(12)
               ),
               child: SizedBox(
                height: 180,
                 child: Padding(
                   padding:  EdgeInsets.zero,
                   child: ListView.separated(
                                
                            itemCount: item.length,
                            separatorBuilder: (context, index) =>
                            Divider(
                              height: 1,
                              thickness: 0.8,
                              color: Color(0xff06492C).withOpacity(0.1),
                            ),
                            
                            itemBuilder: (context, index) {
                              return ListTile(
                                dense: true,
                                visualDensity: const VisualDensity(vertical: -3),
                                  contentPadding: const EdgeInsets.symmetric(horizontal: 12),
                                leading: Image.asset(
                                                 item[index]['images'],
                                                 height: 25,
                                                 width: 25,
                                ),
                                title: Row(
                   children: [
                     Padding(
                       padding: const EdgeInsets.only(top: 2),
                       child: Text(
                         item[index]['Title'],
                         
                         style: TextStyle(
                           fontSize: 16,
                           fontWeight: FontWeight.w600,
                         ),
                       ),
                     ),
                               Spacer(),
                     Text(item[index]['status'] ),
                                
                   ],
                                ),
                            
                                 
                               
                                trailing: Image.asset(
                   item[index]['trailing'],
                   height: 24,
                   width: 24,
                                ),
                              );
                            },
                   ),
                 ),
               ),
           ),
         ),
      
        ],
      ),

);}}
//         