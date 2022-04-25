import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WalletSettingBody extends StatefulWidget {
  @override
  _WalletSettingBodyState createState() => _WalletSettingBodyState();
}

class _WalletSettingBodyState extends State<WalletSettingBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Container(
        padding: EdgeInsets.all(20),
        child: Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Click on 'Actions' button below in order to set up your wallets", textAlign: TextAlign.center,),
              Padding(
                padding: const EdgeInsets.only(top: 70.0),
                child: Center(
                  child: Container(
                    width: 300,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextButton(
                      onPressed: (){},
                      child: const Text('Actions', style:  TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),),
                    ),
                  ),
                ),
              ),

            ],

          ),
        ),
      )),
    );
  }
}
