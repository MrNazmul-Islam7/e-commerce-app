// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:nazmul_app/dashboard.dart';
import 'package:nazmul_app/pages/landingpage.dart';
import 'mob.dart';
import 'laptop.dart';
import 'pc.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  bool _isFullScreen = true;
  bool _mobile = false;
  bool _laptop = false;
  bool _pc = false;
  bool _landing = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _customAppBar,
      body: _customBody,
    );
  }

  AppBar get _customAppBar {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: IconButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => DashBoard()),
            );
          },
          icon: Icon(
            Icons.person_outlined,
            color: Colors.black,
          )),
      actions: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Colors.black,
              )),
        ),
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.black,
            )),
      ],
    );
  }

  Widget get _customBody {
    final _size = MediaQuery.of(context).size;
    return Stack(
      children: [
        //menu Bar at the left of screen
        AnimatedPositioned(
          top: 0,
          left: 0,
          bottom: 0,
          right: _isFullScreen ? _size.width : _size.width * 0.86,
          duration: const Duration(milliseconds: 200),
          child: RotatedBox(
            //show menu at left side
            quarterTurns: 3,
            child: Container(
              alignment: Alignment.center,
              color: Colors.blue,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //mobile accessories
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _pc = false;
                        _laptop = false;
                        _mobile = true;
                        _landing = false;
                        _currentPage = 3;
                        _pageController.animateToPage(_currentPage,
                            duration: const Duration(milliseconds: 150),
                            curve: Curves.bounceIn);
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: _mobile ? Colors.white : Colors.blue,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Text(
                        'Mobile',
                        maxLines: 1,
                        style: TextStyle(
                            fontSize: 16,
                            color: _mobile ? Colors.black : Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),

                  //laptop menu
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _pc = false;
                        _laptop = true;
                        _mobile = false;
                        _landing = false;

                        _currentPage = 2;
                        _pageController.animateToPage(_currentPage,
                            duration: const Duration(milliseconds: 150),
                            curve: Curves.bounceIn);
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: _laptop ? Colors.white : Colors.blue,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Text(
                        'Laptop',
                        maxLines: 1,
                        style: TextStyle(
                            fontSize: 16,
                            color: _laptop ? Colors.black : Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),

                  //pc accessories
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _pc = true;
                        _laptop = false;
                        _mobile = false;
                        _landing = false;
                        _currentPage = 1;
                      });
                      _pageController.animateToPage(_currentPage,
                          duration: const Duration(milliseconds: 150),
                          curve: Curves.bounceIn);
                    },
                    child: Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: _pc ? Colors.white : Colors.blue,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Text(
                        'PC',
                        maxLines: 1,
                        style: TextStyle(
                            fontSize: 16,
                            color: _pc ? Colors.black : Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _landing = true;
                        _pc = false;
                        _laptop = false;
                        _mobile = false;
                        _currentPage = 0;
                      });
                      _pageController.animateToPage(_currentPage,
                          duration: const Duration(milliseconds: 150),
                          curve: Curves.bounceIn);
                    },
                    child: Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: _landing ? Colors.white : Colors.blue,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Text(
                        'Home',
                        maxLines: 1,
                        style: TextStyle(
                            fontSize: 16,
                            color: _pc ? Colors.white : Colors.black),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),

        //menu list of the right screen
        AnimatedPositioned(
          top: 0,
          left: _isFullScreen ? 0 : _size.width * 0.14,
          bottom: 0,
          right: 0,
          duration: const Duration(milliseconds: 200),
          child: PageView(
            physics: const NeverScrollableScrollPhysics(),
            pageSnapping: false,
            children: [
              LandingPage(),
              Pc(),
              Laptop(),
              Mobile(),
            ],
            controller: _pageController,
          ),
        ),

        //Full Screen Button
        Positioned(
          bottom: 1,
          left: 17,
          child: IconButton(
            onPressed: () {
              if (_isFullScreen == false) {
                setState(() {
                  _isFullScreen = true;
                });
              } else {
                setState(() {
                  _isFullScreen = false;
                });
              }
            },
            icon: _isFullScreen
                ? const Icon(
                    Icons.list,
                    color: Colors.black,
                  )
                : const Icon(
                    Icons.crop_square,
                    color: Colors.white,
                  ),
          ),
        ),
      ],
    );
  }
}
