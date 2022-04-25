import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jara/presentation/screens/wallets/components/wallet_settings_body.dart';

import '../../../helpers/constants.dart';

class WalletPageTabBar extends StatefulWidget {
  @override
  _WalletPageTabBarState createState() => _WalletPageTabBarState();
}

class _WalletPageTabBarState extends State<WalletPageTabBar> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 1,
            bottom: const TabBar(
              labelColor: Colors.black,
              indicatorColor: Colors.lightGreen,
              tabs: [
                Tab(
                  text: 'Wallets',
                ),
                Tab(
                  text: 'Wallets Settings',
                ),
              ],
            ),
          ),
          body: TabBarView(children: [
            WalletPageBody(),
            WalletSettingBody(),
          ]),
        ),
      ),
    );
  }
}

class WalletPageBody extends StatefulWidget {
  @override
  _WalletPageBodyState createState() => _WalletPageBodyState();
}

class _WalletPageBodyState extends State<WalletPageBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 8.0, bottom: 8),
              child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'POINTS WALLET',
                    style: TextStyle(color: Color(0xffABA7A7)),
                  )),
            ),
            Container(
              height: 150,
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: kWalletContainerBackgroundG,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0, right: 10),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const Text(
                            "45, 000",
                            style: kTextSyleW,
                          ),
                          Image.asset('images/j points.png')
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(top: 40.0, left: 10),
                          child: Text(
                            'WALLET NUMBER',
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 4.0, left: 10, right: 10, bottom: 10),
                          child: Container(
                            alignment: Alignment.centerLeft,
                            padding: const EdgeInsets.only(left: 8),
                            height: 30,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                border: const Border(
                                  bottom: BorderSide(
                                      color: Colors.white, width: 0.5),
                                  top: BorderSide(
                                      color: Colors.white, width: 0.5),
                                  right: BorderSide(
                                      color: Colors.white, width: 0.5),
                                  left: BorderSide(
                                      color: Colors.white, width: 0.5),
                                )),
                            child: const Text(
                              'ABCD 3445 5666 554 444 300',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Divider(
              thickness: 2,
              color: Colors.green,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, bottom: 14),
              child: Center(child: Image.asset('images/wal icon.png')),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Transactions',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Container(
                  height: 30,
                  width: 120,
                  alignment: Alignment.centerRight,
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    border: const Border(
                      right: BorderSide(width: 1, color: Colors.black),
                      left: BorderSide(width: 1, color: Colors.black),
                      top: BorderSide(width: 1, color: Colors.black),
                      bottom: BorderSide(width: 1, color: Colors.black),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Text('Last 30 days'),
                      Icon(Icons.arrow_drop_down),
                    ],
                  ),
                ),
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0, bottom: 10),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      padding: const EdgeInsets.all(10),
                      height: 100,
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: kWhite,
                      ),
                      child: Stack(
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const CircleAvatar(
                                backgroundColor: knotificationButtonColor,
                                child: Icon(
                                  Icons.arrow_upward,
                                  color: Colors.green,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: const [
                                    Text(
                                      'Wallet Credited',
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      'Your wallet has been credited with 200 Jara\npoints from your deal purchase from Essenza\nperfumes ',
                                      textAlign: TextAlign.start,
                                      style: TextStyle(fontSize: 12),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const Align(
                            child: Text(
                              "3 mins ago",
                              style: TextStyle(fontSize: 12),
                            ),
                            alignment: Alignment.bottomRight,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0, bottom: 10),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      padding: const EdgeInsets.all(10),
                      height: 100,
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: kWhite,
                      ),
                      child: Stack(
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const CircleAvatar(
                                backgroundColor: knotificationButtonColor,
                                child: Icon(
                                  Icons.arrow_upward,
                                  color: Colors.green,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: const [
                                    Text(
                                      'Wallet Credited',
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      'Your wallet has been credited with 200 Jara\npoints from your deal purchase from Essenza\nperfumes ',
                                      textAlign: TextAlign.start,
                                      style: TextStyle(fontSize: 12),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const Align(
                            child: Text(
                              "3 mins ago",
                              style: TextStyle(fontSize: 12),
                            ),
                            alignment: Alignment.bottomRight,
                          ),
                        ],
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
