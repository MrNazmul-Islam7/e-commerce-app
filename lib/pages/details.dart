// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  const Details({Key? key}) : super(key: key);

  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    var _ssize = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.green,
        body: Center(
          child: ListView(
            children: [
              Container(
                height: 380,
                width: _ssize.width * 80,
                decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.only(bottomLeft: Radius.circular(55)),
                    color: Colors.white),
                child:
                    Hero(tag: 'image1', child: Image.asset('images/gpu.png')),
              ),
              Hero(
                tag: 'image1',
                child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                    child: Column(
                      children: [
                        Text(
                          'NVIDIA GeForce RTX 3060 Graphics Card Specifications - GA106 GPU & 12 GB GDDR6 Memory',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'At the heart of the NVIDIA GeForce RTX 3060 graphics card lies the GA106 GPU. The GA106 is one of the many Ampere GPUs that we will be getting on the gaming segment. The GA106 GPU is the third gaming GPU that NVIDIA has produced.The new shader core on the NVIDIA Ampere architecture is 2.7x faster, the new RT cores are 1.7x faster while the new Tensor cores are up to 2.7x faster than the previous generation Turing GPUs. The 2nd Generation RT core delivers dedicated hardware-accelerated ray-tracing performance & features twice the ray/triangles intersection with concurrent RT graphics and compute operations',
                        ),
                      ],
                    )),
              ),
              Container(
                height: 380,
                width: _ssize.width * 80,
                decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.only(bottomLeft: Radius.circular(55)),
                    color: Colors.white),
                child:
                    Hero(tag: 'image2', child: Image.asset('images/intel.png')),
              ),
              Hero(
                tag: 'image2',
                child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                    child: Column(
                      children: [
                        Text(
                          '11th Gen Intel Core i9 11900H',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                            'The 11th Gen Intel Core i9 11900H is an eight-core processor for gaming laptops and an SoC for gaming laptops launched in May of 2021. The 11th Gen Intel Core i9 11900H has 8 willow cove cores and 16 threads with a base clock of 2.5 GHz, which can be boosted to up to 4.9 GHz. The chip is based on the Tiger Lake H45 generation is manufactured on a 10+ nm superfin process with a TDP of 45 Watts. Other Key specs include 24 MB of L3 cache and support for DDR4-3200 memory and 4266 MHz of LPDDDR4 RAM. Also, Tiger Lake SoCs adds PCIe 4 support, Deep Learning Boost technology by intel for faster AI-based computing, and the integration of WiFi 6 and Thunderbolt 4'),
                      ],
                    )),
              ),
            ],
          ),
        ));
  }
}
