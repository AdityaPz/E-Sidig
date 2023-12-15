import 'package:esidig/pages/GerbangAnd.dart';
import 'package:flutter/material.dart';
import 'package:esidig/components/navbarbottom.dart';
import 'package:esidig/components/AppBar.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomePagecoba extends StatelessWidget {
  const HomePagecoba({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var beritaTerkini = [
      "assets/img/Banner.png",
    ];

    return Scaffold(
      appBar: appbar(),
      body: CustomScrollView(
        slivers: <Widget>[
          // SliverList untuk konten yang dapat discroll
          SliverList(
            delegate: SliverChildListDelegate(
              [
                // Bagian Berita Terkini dan CarouselSlider
                // ...
                Padding(
                  padding: const EdgeInsets.only(left: 35, top: 20),
                  child: Text(
                    'Berita Terkini',
                    style: TextStyle(
                      color: Color(0xFF333333),
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: CarouselSlider(
                    options: CarouselOptions(
                      height: 165,
                      autoPlay: true,
                      autoPlayInterval: const Duration(seconds: 3),
                      autoPlayAnimationDuration:
                          const Duration(milliseconds: 800),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      pauseAutoPlayOnTouch: true,
                      enlargeCenterPage: true,
                      viewportFraction: 0.9,
                    ),
                    items: beritaTerkini.map((title) {
                      return Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: AssetImage(title),
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ),

                // Bagian Modul
                Padding(
                  padding: const EdgeInsets.only(left: 35, top: 20),
                  child: Text(
                    'Modul',
                    style: TextStyle(
                      color: Color(0xFF333333),
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: GridView.count(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    crossAxisCount: 3,
                    children: <Widget>[
                      // ... Item-Item di GridView
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (builde) {
                                return GerbangAND();
                              },
                            ),
                          );
                        },
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          decoration: ShapeDecoration(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              shadows: [
                                BoxShadow(
                                  color: Color(0x28000000),
                                  blurRadius: 17,
                                  offset: Offset(0, 0),
                                  spreadRadius: 0,
                                )
                              ]),
                          child: Center(
                            child: Image.asset('assets/icons/Calculator.png'),

                            // child: Text(
                            //   items[index],
                            //   style: TextStyle(fontSize: 18.0),
                            // ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (builde) {
                                return GerbangAND();
                              },
                            ),
                          );
                        },
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          decoration: ShapeDecoration(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              shadows: [
                                BoxShadow(
                                  color: Color(0x28000000),
                                  blurRadius: 17,
                                  offset: Offset(0, 0),
                                  spreadRadius: 0,
                                )
                              ]),
                          child: Center(
                            child:
                                Image.asset('assets/icons/Aljabar Boolean.png'),

                            // child: Text(
                            //   items[index],
                            //   style: TextStyle(fontSize: 18.0),
                            // ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (builde) {
                                return GerbangAND();
                              },
                            ),
                          );
                        },
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          decoration: ShapeDecoration(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              shadows: [
                                BoxShadow(
                                  color: Color(0x28000000),
                                  blurRadius: 17,
                                  offset: Offset(0, 0),
                                  spreadRadius: 0,
                                )
                              ]),
                          child: Center(
                            child: Image.asset('assets/icons/FLIPP FLOP.png'),

                            // child: Text(
                            //   items[index],
                            //   style: TextStyle(fontSize: 18.0),
                            // ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (builde) {
                                return GerbangAND();
                              },
                            ),
                          );
                        },
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          decoration: ShapeDecoration(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              shadows: [
                                BoxShadow(
                                  color: Color(0x28000000),
                                  blurRadius: 17,
                                  offset: Offset(0, 0),
                                  spreadRadius: 0,
                                )
                              ]),
                          child: Center(
                            child:
                                Image.asset('assets/icons/Calculator (1).png'),

                            // child: Text(
                            //   items[index],
                            //   style: TextStyle(fontSize: 18.0),
                            // ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (builde) {
                                return GerbangAND();
                              },
                            ),
                          );
                        },
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          decoration: ShapeDecoration(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              shadows: [
                                BoxShadow(
                                  color: Color(0x28000000),
                                  blurRadius: 17,
                                  offset: Offset(0, 0),
                                  spreadRadius: 0,
                                )
                              ]),
                          child: Center(
                            child: Image.asset('assets/icons/KVRS.png'),

                            // child: Text(
                            //   items[index],
                            //   style: TextStyle(fontSize: 18.0),
                            // ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (builde) {
                                return GerbangAND();
                              },
                            ),
                          );
                        },
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          decoration: ShapeDecoration(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              shadows: [
                                BoxShadow(
                                  color: Color(0x28000000),
                                  blurRadius: 17,
                                  offset: Offset(0, 0),
                                  spreadRadius: 0,
                                )
                              ]),
                          child: Center(
                            child: Image.asset('assets/icons/SOP POS.png'),

                            // child: Text(
                            //   items[index],
                            //   style: TextStyle(fontSize: 18.0),
                            // ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                // Bagian Quiz
                Padding(
                  padding: const EdgeInsets.only(left: 35, top: 20),
                  child: Text(
                    'Quiz',
                    style: TextStyle(
                      color: Color(0xFF333333),
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: ListView(
                    shrinkWrap: true,
                    padding: const EdgeInsets.all(5),
                    children: <Widget>[
                      // ... Item-Item di ListView untuk Quiz
                      Container(
                        height: 50,
                        decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            shadows: [
                              BoxShadow(
                                color: Color(0x28000000),
                                blurRadius: 17,
                                offset: Offset(0, 0),
                                spreadRadius: 0,
                              )
                            ]),
                        child: const Center(child: Text('QUIZ 1')),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 50,
                        decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            shadows: [
                              BoxShadow(
                                color: Color(0x28000000),
                                blurRadius: 17,
                                offset: Offset(0, 0),
                                spreadRadius: 0,
                              )
                            ]),
                        child: const Center(child: Text('QUIZ 2')),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 50,
                        decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            shadows: [
                              BoxShadow(
                                color: Color(0x28000000),
                                blurRadius: 17,
                                offset: Offset(0, 0),
                                spreadRadius: 0,
                              )
                            ]),
                        child: const Center(
                          child: Text('QUIZ 3'),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),

                      Container(
                        height: 50,
                        decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            shadows: [
                              BoxShadow(
                                color: Color(0x28000000),
                                blurRadius: 17,
                                offset: Offset(0, 0),
                                spreadRadius: 0,
                              )
                            ]),
                        child: const Center(
                          child: Text('QUIZ 4'),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 50,
                        decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            shadows: [
                              BoxShadow(
                                color: Color(0x28000000),
                                blurRadius: 17,
                                offset: Offset(0, 0),
                                spreadRadius: 0,
                              )
                            ]),
                        child: const Center(
                          child: Text('QUIZ 5'),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: MyBottomNavigationBar(),
    );
  }
}
