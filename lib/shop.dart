import 'package:flutter/material.dart';
import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:readmore/readmore.dart';

class Shop extends StatefulWidget {
  const Shop({super.key});

  @override
  State<Shop> createState() => _ShopState();
}

bool visibility = false;

class _ShopState extends State<Shop> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  final List<String> tabs = ["All", "Ornamentals", "Supplements", "Herbs"];

  final List<Map<String, dynamic>> plants = [
    {"image": "assets/image 4.png", "name": "Oregano", "price": "\$25"},
    {"image": "assets/image 1 (2).png", "name": "Lemon Balm", "price": "\$10"},
  ];
  final List<Map<String, dynamic>> plants2 = [
    {"image": "assets/image 1.png", "name": "Basil", "price": "\$20"},
    {"image": "assets/image 1 (1).png", "name": "mint", "price": "\$15"},
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: tabs.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0C9359).withOpacity(0.12),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              const Text(
                'Shop 🛒',
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.w500),
              ),

              const SizedBox(height: 18),

              SizedBox(height: 18),
              Text(
                'Popular items',
                style: TextStyle(fontSize: 21, fontWeight: FontWeight.w600),
              ),
              Container(
                height: 271,
                // Height of the horizontal list
                padding: EdgeInsets.symmetric(vertical: 16),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal, // Horizontal scroll
                  itemCount: plants.length,
                  itemBuilder: (context, index) {
                    final plant = plants[index];
                    return Container(
                      width: 177,
                      // Width of each item
                      margin: EdgeInsets.symmetric(horizontal: 8),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        // boxShadow: [
                        //   BoxShadow(
                        //     color: Colors.grey.withOpacity(0.3),
                        //     blurRadius: 5,
                        //     offset: Offset(0, 3),
                        //   ),
                        // ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(height: 5),
                          GestureDetector(
                            onTap: () {
                              if (index == 1) {
                                showModalBottomSheet(
                                  useSafeArea: true,
                                  enableDrag: true,
                                  isScrollControlled: true,
                                  context: context,
                                  builder: (context) {
                                    return StatefulBuilder(
                                      builder: (context, setModalState) {
                                        return visibility
                                            ?
                                              //// second container
                                              AnimatedContainer(
                                                duration: Duration(
                                                  milliseconds: 300,
                                                ),
                                                curve: Curves.easeInOut,
                                                height: 900,
                                                decoration: BoxDecoration(
                                                  color: const Color.fromARGB(255, 253, 253, 253),
                                                  borderRadius:
                                                      BorderRadius.circular(32),
                                                ),

                                                child: Padding(
                                                  padding: const EdgeInsets.symmetric(horizontal: 24),
                                                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      GestureDetector(
                                                        onTap: () {
                                                          setModalState(() {
                                                            visibility =
                                                                !visibility;
                                                          });
                                                        },
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets.only(
                                                                top: 44,
                                                              ),
                                                          child: Column(
                                                            children: [
                                                              Image.asset(
                                                                'assets/Rectangle 57 (1).png',
                                                                width: 64,
                                                                height: 16,
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsets.only(
                                                                      top: 44.0,
                                                                    ),
                                                                child: Row(
                                                                  children: [
                                                                    Padding(
                                                                      padding:
                                                                          const EdgeInsets.only(
                                                                            top:
                                                                                0,
                                                                            left:
                                                                                24,
                                                                          ),
                                                                      child: Column(
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment
                                                                                .start,
                                                                        children: [
                                                                          Text(
                                                                            'Lemon Balm',
                                                                            style: TextStyle(
                                                                              fontSize:
                                                                                  32,
                                                                              fontWeight:
                                                                                  FontWeight.w500,
                                                                              color: Color(
                                                                                0xff111111,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          RichText(
                                                                            text: TextSpan(
                                                                              text:
                                                                                  'Herb. ',
                                                                              style: TextStyle(
                                                                                color:
                                                                                    Color(
                                                                                      0xff06492C,
                                                                                    ).withOpacity(
                                                                                      0.75,
                                                                                    ),
                                                                                fontSize: 21,
                                                                                fontWeight: FontWeight.w600,
                                                                              ),
                                                                              children: [
                                                                                TextSpan(
                                                                                  text: '\$20',
                                                                                  style: TextStyle(
                                                                                    color: Color(
                                                                                      0xff0C9359,
                                                                                    ),
                                                                                    fontWeight: FontWeight.w600,
                                                                                    fontSize: 21,
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                          SizedBox(height: 10,),
                                                                          Text(
                                                                            "121 people are growing this 🌿",
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                    Image.asset(
                                                                      'assets/image 1 (5).png',
                                                                      height: 120,
                                                                      width: 120,
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              SizedBox(height: 24),
                                                      // Text('Read more',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700,color:Color(0xff0C9359) ),),
                                                      Row(
                                                        children: [
                                                          Image.asset(
                                                            'assets/Frame 55.png',
                                                            width: 64,
                                                            height: 52,
                                                          ),
                                                          SizedBox(width: 12),
                                                          Container(
                                                            width: 285,
                                                            height: 52,
                                                            color: Color(
                                                              0xff0C9359,
                                                            ),
                                                            child: Center(
                                                              child: Text(
                                                                'Add to Cart',
                                                                style: TextStyle(
                                                                  fontSize: 18,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w700,
                                                                  color: Colors
                                                                      .white,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),




   ],
                                                          ),
                                                        ),
                                                      ),
                                                     

                                                       Padding(
                                                         padding: const EdgeInsets.only(top: 32),
                                                         child: Text('Description',style: TextStyle(
                                                          fontSize: 16,fontWeight: FontWeight.w700,color: Color(0xff06492C80).withOpacity(0.50)
                                                                                                               ),),
                                                       ),
                                                       Text('Lemon Balm is a 50cm to 80cm high perennial herb with a four-edged, branching, sparsely-haired stalk. The opposed leaves, whose stalked stems vary in length, are broadly oval to heart-shaped and have an irregular crenate (rounded teeth) or serrate (small, sharp teeth) edge.',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: Colors.black),),
                                                       Padding(
                                                         padding: const EdgeInsets.only(top: 20),
                                                         child: Text('Growing information',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700,color: Color(0xff06492C80).withOpacity(0.50))),
                                                       ) ,
                                                       Padding(
                                                         padding: const EdgeInsets.only(top: 19),
                                                         child: Column(
                                                           children: [
                                                             Row(
                                                               children: [
                                                                 Image.asset('assets/Frame (5).png',height: 24,width: 24,),
                                                                 SizedBox(width: 8,),
                                                                    Text('Room temparature is fine',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700,color: Color(0xff06492C)))
                                                               ],
                                                         
                                                             ),
                                                             
                                                          Row(
                                                            children: [
                                                              Image.asset('assets/Frame (6).png',height: 24,width: 24,),
                                                               SizedBox(width: 8,),
                                                              Text('Regular watering works best',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700,color: Color(0xff06492C)))
                                                            ],
                                                          ),
                                                          Row(
                                                            children: [
                                                              Image.asset('assets/Frame (10).png',height: 24,width: 24,),
                                                               SizedBox(width: 8,),
                                                              Text('Typically ready for harvest after 4 weeks',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700,color: Color(0xff06492C)),)
                                                            ],
                                                          )
                                                         
                                                           ],
                                                         ),
                                                       ),
                                                       Padding(
                                                         padding: const EdgeInsets.only(top: 20),
                                                         child: Text('Other Herbs',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700,color: Color(0xff06492C80).withOpacity(0.50))),
                                                       ),
                                                      //  Row(
                                                      //    children: [
                                                      //      Image.asset('assets/image 1 (3).png',height: 150,width: 177,),
                                                      //      Image.asset('assets/image 1.png',height: 150,width: 177,)
                                                      //    ],
                                                      //  )
                                                      SizedBox(height: 5,),
                                                     Row(
                                                       children: [
                                                         Container(
                                                          decoration: BoxDecoration(
                                                            color: Colors.white,
                                                            boxShadow: [
                                                              BoxShadow(
                                                                color: Color(0xff0C9359).withOpacity(0.20),
                                                                blurRadius: 5,
                                                                offset: Offset(2, 2),
                                                                spreadRadius: 5
                                                              )
                                                            ]
                                                          ),
                                                          height: 150,
                                                          width: 177,
                                                          child: Image.asset('assets/image 1 (3).png',height: 150,width: 177,),
                                                         ),
                                                         SizedBox(width: 8,),
                                                         Container(
                                                          decoration: BoxDecoration(
                                                            color: Colors.white,
                                                            boxShadow: [
                                                              BoxShadow(
                                                                color: Color(0xff0C9359).withOpacity(0.20),
                                                                blurRadius: 5,
                                                                offset: Offset(2, 2),
                                                                spreadRadius: 5
                                                              )
                                                            ]
                                                          ),
                                                          height: 150,
                                                          width: 177,
                                                          child: Image.asset('assets/image 1.png',height: 150,width: 177,)
                                                         )
                                                       ],
                                                     )
                                                         
                                                    ],
                                                  ),
                                                ),
                                              )
                                            :
                                              //// first container
                                              AnimatedContainer(
                                                duration: Duration(
                                                  milliseconds: 300,
                                                ),
                                                curve: Curves.easeInOut,
                                                height: 522,
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(32),
                                                ),

                                                child: Column(
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                            top: 16,
                                                          ),
                                                      child: Container(
                                                        height: 8,
                                                        width: 48,
                                                        decoration: BoxDecoration(
                                                          color: Color(
                                                            0xff06492C,
                                                          ).withOpacity(0.25),
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                8,
                                                              ),
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                            top: 40,
                                                          ),
                                                      child: Image.asset(
                                                        'assets/image 1.png',
                                                        height: 120,
                                                        width: 120,
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                            top: 16,
                                                          ),
                                                      child: Text(
                                                        'Lemon Balm',
                                                        style: TextStyle(
                                                          fontSize: 32,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          color: Color(
                                                            0xff111111,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(height: 10),
                                                    RichText(
                                                      text: TextSpan(
                                                        text: 'Herb. ',
                                                        style: TextStyle(
                                                          color: Color(
                                                            0xff06492C,
                                                          ).withOpacity(0.75),
                                                          fontSize: 21,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                        children: [
                                                          TextSpan(
                                                            text: '\$20',
                                                            style: TextStyle(
                                                              color: Color(
                                                                0xff0C9359,
                                                              ),
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              fontSize: 21,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),

                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                            top: 24,
                                                            left: 32,
                                                            right: 32,
                                                          ),
                                                      child: Column(
                                                        children: [
                                                          SizedBox(
                                                            width: 350,
                                                            child: Text(
                                                              'Lemon Balm is a 50cm to 80cm high perennial herb with a four-edged, '
                                                              'branching, sparsely-haired stalk.',

                                                              style: TextStyle(
                                                                fontSize: 14,
                                                                height: 1.5,
                                                                color:
                                                                    Color(
                                                                      0xff111111,
                                                                    ).withOpacity(
                                                                      0.75,
                                                                    ),
                                                              ),
                                                            ),
                                                          ),
                                                          GestureDetector(
                                                            onTap: () {
                                                              setModalState(() {
                                                                visibility =
                                                                    !visibility;
                                                              });
                                                            },
                                                            child: Text(
                                                              'readmore',
                                                              style: TextStyle(
                                                                fontSize: 18,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700,
                                                                color: Color(
                                                                  0xff0C9359,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),

                                                    // Text('Lemon Balm is a 50cm to 80cm high perennial herb with a four-edged, branching, sparsely-haired stalk.',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: Color(0xff111111).withOpacity(0.75)),),
                                                    SizedBox(height: 24),
                                                    // Text('Read more',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700,color:Color(0xff0C9359) ),),
                                                    Row(
                                                      children: [
                                                        Image.asset(
                                                          'assets/Frame 55.png',
                                                          width: 64,
                                                          height: 52,
                                                        ),
                                                        SizedBox(width: 12),
                                                        Container(
                                                          width: 290,
                                                          height: 52,
                                                          color: Color(
                                                            0xff0C9359,
                                                          ),
                                                          child: Center(
                                                            child: Text(
                                                              'Add to Cart',
                                                              style: TextStyle(
                                                                fontSize: 18,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700,
                                                                color: Colors
                                                                    .white,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              );
                                      },
                                    );
                                  },
                                );
                              }
                            },

                            child: Image.asset(
                              plant["image"],
                              height: 177,
                              width: 177,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            plant["name"],
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            plant["price"],
                            style: TextStyle(
                              color: Color(0xff06492C).withOpacity(0.75),
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text(
                  'Our nursery',
                  style: TextStyle(fontSize: 21, fontWeight: FontWeight.w600),
                ),
              ),

              /// ✅ BUTTONS TAB BAR
              ButtonsTabBar(
                controller: _tabController,

                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 14,
                  vertical: 6,
                ),

                radius: 30,

                backgroundColor: const Color(0xff3BCEAC), // SELECTED tab color

                borderWidth: 1,
                borderColor: const Color(0xff3BCEAC), // selected tab border

                unselectedDecoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(
                    color: const Color(0xff3BCEAC).withOpacity(0.4),
                    width: 1,
                  ),
                ),

                labelStyle: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),

                unselectedLabelStyle: const TextStyle(
                  color: Color(0xff3BCEAC),
                  fontWeight: FontWeight.w500,
                ),

                tabs: tabs.map((e) => Tab(text: e)).toList(),
              ),

              const SizedBox(height: 5),

              /// ✅ TAB BAR VIEW
              //   Expanded(
              //     child: TabBarView(
              //       controller: _tabController,
              //       children: [
              //         Center(child: Text("All items")),
              //         Center(child: Text("Ornamentals")),
              //         Center(child: Text("Supplements")),
              //         Center(child: Text("Herbs")),
              //       ],
              //     ),
              //   ),
              Container(
                height: 258,
                // Height of the horizontal list
                padding: EdgeInsets.symmetric(vertical: 16),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal, // Horizontal scroll
                  itemCount: plants2.length,
                  itemBuilder: (context, index) {
                    final plant = plants2[index];
                    return Container(
                      width: 177,
                      // Width of each item
                      margin: EdgeInsets.symmetric(horizontal: 8),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        // boxShadow: [
                        //   BoxShadow(
                        //     color: Colors.grey.withOpacity(0.3),
                        //     blurRadius: 5,
                        //     offset: Offset(0, 3),
                        //   ),
                        // ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(height: 0),
                          Image.asset(
                            plant["image"],
                            height: 177,
                            width: 177,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(height: 0),
                          Text(
                            plant["name"],
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(height: 0),
                          Text(
                            plant["price"],
                            style: TextStyle(
                              color: Color(0xff06492C).withOpacity(0.75),
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
