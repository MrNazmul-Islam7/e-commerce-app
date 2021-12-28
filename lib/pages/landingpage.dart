import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class LandingPage extends StatelessWidget {
  LandingPage({Key? key}) : super(key: key);
  final List<String> imagelist = [
    'slider/a.jpg',
    'slider/b.jpg',
    'slider/c.jpg',
    'slider/d.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          CarouselSlider(
            options: CarouselOptions(
                enlargeCenterPage: true,
                enableInfiniteScroll: false,
                autoPlay: true),
            items: imagelist
                .map((e) => ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Stack(
                        children: [
                          Image.asset(
                            e,
                            width: 1200,
                            height: 200,
                          )
                        ],
                      ),
                    ))
                .toList(),
          ),
        ],
      ),
    );
  }
}
