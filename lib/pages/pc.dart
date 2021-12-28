// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors

import 'dart:js';
import 'package:flutter/material.dart';
import 'package:nazmul_app/pages/details.dart';

class Pc extends StatefulWidget {
  Pc({Key? key}) : super(key: key);

  @override
  State<Pc> createState() => _PcState();
}

class _PcState extends State<Pc> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.topLeft,
      width: size.width * 0.86,
      height: size.height,
      color: Colors.white,
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 36),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Computer',
                      style: TextStyle(fontSize: 16, color: Colors.black54),
                    ),
                    Text(
                      'Accessories',
                      style: TextStyle(
                          fontSize: 32,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                      decoration: const BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 4.0,
                            spreadRadius: 1.0,
                            offset: Offset(
                              0.0,
                              2.0,
                            ),
                          ),
                        ],
                      ),
                      height: 320,
                      child: Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                    builder: (context) => Details()),
                              );
                            },
                            child: Hero(
                              tag: 'image1',
                              child: Image.asset(
                                'images/gpu.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(30, 10, 30, 15),
                            child: Column(
                              children: [
                                Text(
                                  'Nvidia 3060 gpu',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Row(
                                  children: [
                                    Text('\$100'),
                                    Spacer(),
                                    IconButton(
                                        onPressed: () {},
                                        icon: Icon(Icons.favorite))
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      )),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                      padding: EdgeInsets.only(top: 10),
                      decoration: const BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 4.0,
                            spreadRadius: 1.0,
                            offset: Offset(
                              0.0,
                              2.0,
                            ),
                          ),
                        ],
                      ),
                      height: 320,
                      child: Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                    builder: (context) => Details()),
                              );
                            },
                            child: Hero(
                              tag: 'image2',
                              child: Image.asset(
                                'images/intel.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(30, 10, 30, 15),
                            child: Column(
                              children: [
                                Text(
                                  'Intel i9 11Gen',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Row(
                                  children: [
                                    Text('\$200'),
                                    Spacer(),
                                    IconButton(
                                        onPressed: () {},
                                        icon: Icon(Icons.favorite))
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      )),
                  SizedBox(
                    height: 15,
                  ), //2nd item end
                  Container(
                      decoration: const BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 4.0,
                            spreadRadius: 1.0,
                            offset: Offset(
                              0.0,
                              2.0,
                            ),
                          ),
                        ],
                      ),
                      height: 320,
                      child: Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                    builder: (context) => Details()),
                              );
                            },
                            child: Hero(
                              tag: 'image3',
                              child: Image.asset(
                                'images/amd.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(30, 10, 30, 15),
                            child: Column(
                              children: [
                                Text(
                                  'amd ryzen 3600',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Row(
                                  children: [
                                    Text('\$300'),
                                    Spacer(),
                                    IconButton(
                                        onPressed: () {},
                                        icon: Icon(Icons.favorite))
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      )),
                  SizedBox(
                    height: 15,
                  ), //3rd item end
                  //4th item start
                  Container(
                      decoration: const BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 4.0,
                            spreadRadius: 1.0,
                            offset: Offset(
                              0.0,
                              2.0,
                            ),
                          ),
                        ],
                      ),
                      height: 320,
                      child: Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                    builder: (context) => Details()),
                              );
                            },
                            child: Hero(
                              tag: 'image4',
                              child: Image.asset(
                                'images/key.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(30, 10, 30, 15),
                            child: Column(
                              children: [
                                Text(
                                  'Mechanical KeyBoard',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Row(
                                  children: [
                                    Text('\$150'),
                                    Spacer(),
                                    IconButton(
                                        onPressed: () {},
                                        icon: Icon(Icons.favorite))
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      )),
                  SizedBox(
                    height: 15,
                  ), //4th item end
                  //5th item start
                  Container(
                      decoration: const BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 4.0,
                            spreadRadius: 1.0,
                            offset: Offset(
                              0.0,
                              2.0,
                            ),
                          ),
                        ],
                      ),
                      height: 320,
                      child: Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                    builder: (context) => Details()),
                              );
                            },
                            child: Hero(
                              tag: 'image5',
                              child: Image.asset(
                                'images/monitor.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(30, 10, 30, 15),
                            child: Column(
                              children: [
                                Text(
                                  'Curved Monitor',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Row(
                                  children: [
                                    Text('\$250'),
                                    Spacer(),
                                    IconButton(
                                        onPressed: () {},
                                        icon: Icon(Icons.favorite))
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      )),
                  SizedBox(
                    height: 15,
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
