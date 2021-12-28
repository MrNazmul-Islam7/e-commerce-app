import 'dart:ui';

import 'package:flutter/material.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
                flex: 1,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [Colors.red, Colors.amber]),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 25,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            'MD NAZMUL ISLAM',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * .14,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              alignment: Alignment.center,
                              child: Column(
                                children: [Text('0'), Text('wishlist')],
                              )),
                          Container(
                              alignment: Alignment.center,
                              child: Column(
                                children: [Text('0'), Text('Favorite store')],
                              )),
                          Container(
                              alignment: Alignment.center,
                              child: Column(
                                children: [Text('0'), Text('vauchar')],
                              )),
                        ],
                      )
                    ],
                  ),
                )),
            Expanded(
                flex: 2,
                child: Column(children: [
                  Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Column(children: [
                        Text('My Order',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15)),
                        SizedBox(height: 12),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Column(
                                children: [
                                  Icon(Icons.payments_outlined),
                                  Text('on payment')
                                ],
                              ),
                            ),
                            Container(
                              child: Column(
                                children: [
                                  Icon(Icons.redeem_outlined),
                                  Text('packing')
                                ],
                              ),
                            ),
                            Container(
                              child: Column(
                                children: [
                                  Icon(Icons.local_shipping_outlined),
                                  Text('curier'),
                                ],
                              ),
                            ),
                            Container(
                              child: Column(
                                children: [
                                  Icon(Icons.reviews_outlined),
                                  Text('review')
                                ],
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 12),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Column(
                                children: [
                                  Icon(Icons.keyboard_return_sharp),
                                  Text('return')
                                ],
                              ),
                            ),
                            Container(
                              child: Column(
                                children: [
                                  Icon(Icons.cancel_outlined),
                                  Text('cancel'),
                                ],
                              ),
                            ),
                            Container(
                              child: Column(
                                children: [
                                  Icon(Icons.account_balance_wallet_outlined),
                                  Text('wallet')
                                ],
                              ),
                            ),
                            Container(
                              child: Column(
                                children: [Icon(Icons.share), Text('refer')],
                              ),
                            )
                          ],
                        )
                      ])),
                  Expanded(
                    child: Container(
                      // margin: EdgeInsets.only(top: 10),
                      padding: EdgeInsets.all(10),
                      color: Colors.white,
                      child: Column(
                        children: [
                          Text('services'),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Column(
                                  children: [
                                    Icon(Icons.price_change_outlined),
                                    Text('payment option')
                                  ],
                                ),
                              ),
                              Container(
                                child: Column(
                                  children: [
                                    Icon(Icons.message_outlined),
                                    Text('message')
                                  ],
                                ),
                              ),
                              Container(
                                child: Column(
                                  children: [Icon(Icons.help), Text('help')],
                                ),
                              ),
                              Container(
                                child: Column(
                                  children: [
                                    Icon(Icons.border_color_outlined),
                                    Text('terms and condition')
                                  ],
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ])),
          ],
        ),
      ),
    );
  }
}
