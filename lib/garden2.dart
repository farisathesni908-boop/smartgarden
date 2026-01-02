import 'package:flutter/material.dart';
import 'package:smartgardenapp/garden1.dart';

class Garden2 extends StatefulWidget {
  const Garden2({super.key});

  @override
  State<Garden2> createState() => _Garden2State();
}

class _Garden2State extends State<Garden2> {
  List<Map<String, dynamic>> plantsdata = [
    {
      "images": "assets/image 1.png",
      "title": "Basil",
      "subtitle": "Herb",
      "trailing": "Harvest in 3 days",
      "subtrailing": "Planted 8 days ago ",
    },

    {
      "images": "assets/image 1 (1).png",
      "title": "Mint",
      "subtitle": "Herb",
      "trailing": "Harvest in 10 days",
      "subtrailing": "Planted 5 days ago ",
    },

    {
      "images": "assets/image 1 (2).png",
      "title": "Lemon Balm",
      "subtitle": "Herb",
      "trailing": "Harvest in 15 days",
      "subtrailing": "Planted 82 days ago ",
    },
    {
      "images": "assets/image 1 (3).png",
      "title": "Oregano",
      "subtitle": "Herb",
      "trailing": "Harvest in 3 weeks",
      "subtrailing": "Planted 1 days ago ",
    },
  ];
  List<Map<String, dynamic>> item = [
    {
      "images": "assets/Frame (7).png",
      "Title": "Connectivity",
      "status": "Connected via Wifi",
      "trailing": "assets/Vector (22).png",
    },

    {
      "images": "assets/Frame (12).png",
      "Title": "Plantlight Settings",
      "status": "Currently ON",
      "trailing": "assets/Vector (22).png",
    },
    {
      "images": "assets/Frame (10).png",
      "Title": "Cycle Settings",
      "status": "",
      "trailing": "assets/Vector (22).png",
    },
    {
      "images": "assets/Vector (21).png",
      "Title": "Aepod Sync Settings",
      "status": "",
      "trailing": "assets/Vector (22).png",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        // bottomNavigationBar: Padding(
        //   padding: const EdgeInsets.only(bottom: 0),
        //   child: Center(child: Text('aepod')),
        // ),
        backgroundColor: Color.fromARGB(255, 232, 255, 249),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image.asset('assets/Rectangle 28 (2).png'),
                Positioned(
                  left: 24,
                  top: 64,
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          width: 121,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(40),
                          ),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 16),
                                child: Icon(
                                  Icons.arrow_back_ios,
                                  color: Color(0xff0C9359),
                                ),
                              ),
                              Text(
                                'Go back',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xff0C9359),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      SizedBox(width: 200),
                      Image.asset(
                        'assets/Frame (13).png',
                        height: 40,
                        width: 40,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15, left: 24),
              child: Text(
                'Charlie’s Garden',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24, top: 4),
              child: Text(
                'ID: 1344295024',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w100,
                  color: Colors.black,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24, top: 20),
              child: Container(
                width: 374,
                height: 50,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 221, 240, 232).withOpacity(0.5),
                  borderRadius: BorderRadius.circular(12),
                ),

                child: TabBar(
                  unselectedLabelColor: Color(0xff0C9359).withOpacity(0.5),
                  labelColor: Color(0xff06492C),

                  labelPadding: EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 10,
                  ),

                  indicator: BoxDecoration(
                    color: Color(0xffffffff),

                    borderRadius: BorderRadius.circular(12),
                  ),
                  dividerColor: Colors.transparent,
                  tabs: [
                    Container(
                      height: 42,
                      width: 122,

                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Tab(text: 'PLANTS'),
                    ),
                    Container(
                      height: 42,
                      width: 122,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Tab(text: 'LOG'),
                    ),

                    Container(
                      height: 42,
                      width: 122,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Tab(text: 'SETTINGS'),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 400,
              width: 600,
              child: TabBarView(
                children: [
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 20,
                            right: 20,
                            top: 24,
                          ),
                          child: Container(
                            width: 374,
                            // height: 89,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                              boxShadow: [
                                BoxShadow(
                                  color: Color.fromARGB(255, 206, 241, 226),
                                  blurRadius: 0.5,
                                  spreadRadius: 0.5,
                                ),
                              ],
                            ),

                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                    top: 16,
                                    left: 12,
                                  ),
                                  child: Row(
                                    children: [
                                      Image.asset(
                                        'assets/Frame (10).png',
                                        height: 24,
                                        width: 24,
                                      ),
                                      SizedBox(width: 8),
                                      Text(
                                        'Using 6 out 9 pods',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700,
                                          color: Color(0xff06492C),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 12,
                                    top: 16,
                                  ),
                                  child: Row(
                                    children: [
                                      Image.asset(
                                        'assets/Frame (11).png',
                                        height: 24,
                                        width: 24,
                                      ),
                                      SizedBox(width: 8),
                                      Text(
                                        'Basil will be ready for harvest in 3 days',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700,
                                          color: Color(0xff06492C),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        SizedBox(height: 26),

                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 28),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(12.0),
                                      child: Image.asset(
                                        'assets/Frame (9).png',
                                        height: 16,
                                        width: 16,
                                        color: Color(
                                          0xff06492C,
                                        ).withOpacity(0.75),
                                      ),
                                    ),
                                    Text(
                                      'Growing now',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: Color(
                                          0xff06492C,
                                        ).withOpacity(0.75),
                                      ),
                                    ),
                                  ],
                                ),
                                height: 40,
                                // width: 500,
                                color: Color.fromARGB(32, 138, 250, 222),
                              ),
                              SizedBox(
                                height: 310,
                                child: ListView.separated(
                                  itemCount: plantsdata.length,
                                  separatorBuilder: (context, index) =>
                                      const Divider(), // simpler syntax
                                  itemBuilder: (context, index) {
                                    final plant = plantsdata[index];
                                    // easier to read
                                    return GestureDetector(
                                      onTap: () {
                                        if (index == 2)
                                          showModalBottomSheet(
                                            context: context,
                                            builder: (context) {
                                              return StatefulBuilder(
                                                builder: (context, setModalState) {
                                                  return Container(
                                                    width: 414,
                                                    height: 522,

                                                    decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                            32,
                                                          ),
                                                      boxShadow: [
                                                        BoxShadow(
                                                          spreadRadius: 5.5,
                                                          color: Color.fromARGB(
                                                            15,
                                                            214,
                                                            229,
                                                            233,
                                                          ),
                                                          blurRadius: 5,
                                                        ),
                                                      ],
                                                    ),
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets.only(
                                                                top: 16,
                                                              ),
                                                          child: Center(
                                                            child: Container(
                                                              height: 8,
                                                              width: 48,
                                                              decoration: BoxDecoration(
                                                                color:
                                                                    Color(
                                                                      0xff06492C,
                                                                    ).withOpacity(
                                                                      0.25,
                                                                    ),
                                                                borderRadius:
                                                                    BorderRadius.circular(
                                                                      4,
                                                                    ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        SizedBox(height: 40),
                                                        Row(
                                                          children: [
                                                            Image.asset(
                                                              'assets/image 1 (3).png',
                                                              height: 96,
                                                              width: 96,
                                                            ),
                                                            SizedBox(width: 50),
                                                            Image.asset(
                                                              'assets/image 1.png',
                                                              height: 120,
                                                              width: 120,
                                                            ),
                                                            SizedBox(width: 48),
                                                            Image.asset(
                                                              'assets/image 1 (4).png',
                                                              height: 96,
                                                              width: 96,
                                                            ),
                                                          ],
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets.only(
                                                                left: 25,
                                                                right: 20,
                                                              ),
                                                          child: Row(
                                                            children: [
                                                              Image.asset(
                                                                'assets/Vector (16).png',
                                                                height: 20,
                                                                width: 20,
                                                              ),

                                                              Padding(
                                                                padding:
                                                                    const EdgeInsets.only(
                                                                      left: 62,
                                                                    ),
                                                                child: Text(
                                                                  'Lemon Balm',
                                                                  style: TextStyle(
                                                                    fontSize:
                                                                        32,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    color: Colors
                                                                        .black,
                                                                  ),
                                                                ),
                                                              ),
                                                              SizedBox(
                                                                width: 40,
                                                              ),

                                                              Image.asset(
                                                                'assets/Frame (16).png',
                                                                height: 40,
                                                                width: 40,
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Center(
                                                          child: Text(
                                                            'Herb',
                                                            style: TextStyle(
                                                              fontSize: 21,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              color:
                                                                  Color(
                                                                    0xff06492C,
                                                                  ).withOpacity(
                                                                    0.75,
                                                                  ),
                                                            ),
                                                          ),
                                                        ),
                                                        Center(
                                                          child: Text(
                                                            'Harvest in 3 days',
                                                            style: TextStyle(
                                                              fontSize: 16,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              color: Color(
                                                                0xff06492C,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Center(
                                                          child: Text(
                                                            'Planted 8 days ago',
                                                            style: TextStyle(
                                                              fontSize: 16,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              color:
                                                                  Color(
                                                                    0xff06492C,
                                                                  ).withOpacity(
                                                                    0.5,
                                                                  ),
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets.only(
                                                                top: 24,
                                                              ),
                                                          child: Center(
                                                            child: Container(
                                                              width: 243,
                                                              height: 56,
                                                              child: Container(
                                                                child: Row(
                                                                  children: [
                                                                    Padding(
                                                                      padding:
                                                                          const EdgeInsets.only(
                                                                            left:
                                                                                16,
                                                                          ),
                                                                      child: Image.asset(
                                                                        'assets/Vector (17).png',
                                                                        height:
                                                                            22,
                                                                        width:
                                                                            14,
                                                                        color: Color(
                                                                          0xff3BCEAC,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    SizedBox(
                                                                      width: 8,
                                                                    ),
                                                                    Text(
                                                                      '23°c',
                                                                      style: TextStyle(
                                                                        fontSize:
                                                                            16,
                                                                        fontWeight:
                                                                            FontWeight.w700,
                                                                        color: Colors
                                                                            .black,
                                                                      ),
                                                                    ),
                                                                    SizedBox(
                                                                      width: 12,
                                                                    ),
                                                                    CircleAvatar(
                                                                      radius:
                                                                          13,
                                                                      backgroundColor:
                                                                          Color(
                                                                            0xff3BCEAC,
                                                                          ),

                                                                      child: Icon(
                                                                        Icons
                                                                            .done,
                                                                        color: Colors
                                                                            .white,
                                                                        size:
                                                                            16,
                                                                      ),
                                                                    ),
                                                                    SizedBox(
                                                                      width: 3,
                                                                    ),
                                                                    Padding(
                                                                      padding: const EdgeInsets.only(
                                                                        top: 8,
                                                                        bottom:
                                                                            8,
                                                                      ),
                                                                      child: VerticalDivider(
                                                                        color: Color(
                                                                          0xff06492C,
                                                                        ).withOpacity(0.1),
                                                                      ),
                                                                    ),

                                                                    Image.asset(
                                                                      'assets/Frame (6).png',
                                                                      height:
                                                                          24,
                                                                      width: 24,
                                                                    ),
                                                                    SizedBox(
                                                                      width: 8,
                                                                    ),
                                                                    Text(
                                                                      '85%',
                                                                      style: TextStyle(
                                                                        fontSize:
                                                                            16,
                                                                        fontWeight:
                                                                            FontWeight.w700,
                                                                        color: Colors
                                                                            .black,
                                                                      ),
                                                                    ),

                                                                    SizedBox(
                                                                      width: 6,
                                                                    ),
                                                                    CircleAvatar(
                                                                      radius:
                                                                          13,
                                                                      backgroundColor:
                                                                          Color(
                                                                            0xff3BCEAC,
                                                                          ),

                                                                      child: Icon(
                                                                        Icons
                                                                            .done,
                                                                        color: Colors
                                                                            .white,
                                                                        size:
                                                                            16,
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              decoration: BoxDecoration(
                                                                color:
                                                                    Color.fromARGB(
                                                                      255,
                                                                      226,
                                                                      233,
                                                                      230,
                                                                    ).withOpacity(
                                                                      0.5,
                                                                    ),
                                                                borderRadius:
                                                                    BorderRadius.circular(
                                                                      12,
                                                                    ),

                                                                boxShadow: [
                                                                  BoxShadow(
                                                                    color: Color(
                                                                      0xff0C9359,
                                                                    ).withOpacity(0.15),
                                                                    offset: const Offset(
                                                                      0,
                                                                      6,
                                                                    ), // 👉 moves shadow down
                                                                    blurRadius:
                                                                        12, // 👉 softness
                                                                    spreadRadius:
                                                                        1, // 👉 extends to left & right
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        SizedBox(height: 28),
                                                        Center(
                                                          child: Text(
                                                            'See growing tips',
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
                                                  );
                                                },
                                              );
                                            },
                                          );
                                      },
                                      child: ListTile(
                                        leading: Image.asset(
                                          plant["images"],
                                          width: 50, // optional: adjust size
                                          height: 50,
                                          fit: BoxFit.cover,
                                        ),
                                        title: Row(
                                          children: [
                                            Expanded(
                                              child: Text(plant['title']),
                                            ), // prevent overflow
                                            Image.asset(
                                              'assets/Frame (14).png',
                                              width: 20,
                                              height: 20,
                                            ),
                                          ],
                                        ),
                                        subtitle: Text(plant["subtitle"]),
                                        trailing: Column(
                                          children: [
                                            Text(plant['trailing']),
                                            Text(plant['subtrailing']),
                                          ],
                                        ),
                                        contentPadding:
                                            const EdgeInsets.symmetric(
                                              horizontal: 16,
                                            ), // optional padding
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 28),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 16),
                            child: Container(
                              width: 374,
                              height: 60,
                              color: Colors.white,
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text('Sort by:'),
                                  ),
                                  SizedBox(width: 91),
                                  Text(
                                    'Urgency: High to Low',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                      color: Color(
                                        0xff06492C,
                                      ).withOpacity(0.75),
                                    ),
                                  ),
                                  Image.asset(
                                    'assets/Group 32.png',
                                    height: 32,
                                    width: 32,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 16),
                          Padding(
                            padding: const EdgeInsets.only(left: 20, right: 20),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(
                                  width: 1,
                                  color: Color(0xff06492C).withOpacity(0.1),
                                ),
                              ),
                              height: 180,
                              width: 358,

                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 10,
                                      left: 8,
                                      right: 8,
                                    ),
                                    child: Container(
                                      width: 358,
                                      height: 52,
                                      color: Color(0xff0C9359),
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                          left: 16,
                                          right: 8,
                                        ),
                                        child: Row(
                                          children: [
                                            Image.asset(
                                              'assets/Vector (20).png',
                                              height: 15,
                                              width: 17,
                                            ),
                                            SizedBox(width: 8),
                                            Text(
                                              'Water Refill Due',
                                              style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w700,
                                                color: Colors.white,
                                              ),
                                            ),
                                            SizedBox(width: 95),
                                            Text(
                                              '5hr ago',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 16),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 16),
                                    child: Text(
                                      'This Aepod’s water level is low (10%), you should refill it.',
                                    ),
                                  ),
                                  Divider(
                                    // color: Color(value),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 25,
                                      top: 8,
                                    ),

                                    child: Text(
                                      'Refill Now',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w700,
                                        color: Color(0xff0C9359),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 16),

                          Padding(
                            padding: const EdgeInsets.only(left: 20, right: 20),
                            child: Container(
                              height: 120,
                              width: 358,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  left: 16,
                                  top: 19,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.play_circle_outline_sharp,
                                          color: Color(
                                            0xff06492C,
                                          ).withOpacity(0.5),
                                        ),
                                        SizedBox(width: 8),
                                        Text(
                                          'New cycle started',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w700,
                                            color: Color(0xff06492C),
                                          ),
                                        ),
                                        SizedBox(width: 95),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            right: 24,
                                          ),
                                          child: Text(
                                            '5m',
                                            style: TextStyle(
                                              color: Color(
                                                0xff06492C,
                                              ).withOpacity(0.5),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 19),
                                    Text(
                                      'You just started a new cycle, time to grow new plants 😊',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(
                                  color: Color(0xff06492C).withOpacity(0.1),
                                  width: 1,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 24),
                          Container(
                            height: 58,
                            width: 358,

                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(
                                color: Color(0xff06492C).withOpacity(0.1),
                                width: 1,
                              ),
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 16),
                                  child: Image.asset(
                                    'assets/Frame (10).png',
                                    color: Color(0xff06492C).withOpacity(0.5),
                                    height: 20,
                                    width: 20,
                                  ),
                                ),
                                SizedBox(width: 5),
                                Text(
                                  'Oregano ready for harvest',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xff06492C),
                                  ),
                                ),
                                SizedBox(width: 20),
                                Text(
                                  '2 days ago',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  Container(
                    color:Colors.white,
                    height: 400,

                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 28,
                        left: 20,
                        right: 20,
                     
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                          
                            Container(
                              width: 374,
                              height: 200,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color.fromARGB(
                                      255,
                                      73,
                                      162,
                                      187,
                                    ).withOpacity(0.12),
                                    blurRadius: 10,
                                    offset: Offset(5, 8),
                                    spreadRadius: 10,
                                  ),
                                ],
                              ),

                              child: ListView.separated(
                                itemCount: item.length,
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: const EdgeInsets.only(top: 2),
                                    child: ListTile(
                                      dense: true,
                                      visualDensity: const VisualDensity(
                                        vertical: -3,
                                      ),
                                      contentPadding:
                                          const EdgeInsets.symmetric(
                                            horizontal: 12,
                                          ),
                                      leading: Image.asset(
                                        item[index]['images'],
                                        width: 20, // optional: adjust size
                                        height: 20,
                                        fit: BoxFit.cover,
                                      ),

                                      title: Row(
                                        children: [
                                          Text(
                                            item[index]['Title'],
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                          SizedBox(width:15 ),
                                          Text(
                                            item[index]['status  '],
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                              color: Color(
                                                0xff06492C,
                                              ).withOpacity(.75),
                                            ),
                                          ),
                                          SizedBox(width: 10),
                                        ],
                                      ),

                                      trailing: Image.asset(
                                        item[index]['trailing'],
                                        height: 12.73,
                                        width: 7.78,
                                      ),
                                    ),
                                  );
                                },
                                separatorBuilder: (context, index) {
                                  return Padding(
                                    padding: const EdgeInsets.only(
                                      left: 8,
                                      right: 8,
                                    ),
                                    child: Divider(
                                      height: 0.8,
                                      color: Color.fromARGB(
                                        255,
                                        133,
                                        153,
                                        144,
                                      ).withOpacity(0.1),
                                    ),
                                  );
                                },
                              ),
                            ),

                             SizedBox(
                              height: 100,
                             ),
                                                      Padding(
                                                        padding: const EdgeInsets.only(left: 170),
                                                        child: Row(crossAxisAlignment: CrossAxisAlignment.center,
                                                          children: [
                                                            Image.asset('assets/logo (3).png',height: 20,width: 20,),
                                                            Text('AEPOD',style: TextStyle(color: Color(0xff06492C).withOpacity(0.25)),),
                                                          ],
                                                        ),
                                                      )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
