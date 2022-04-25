import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
class SetWalletPin extends StatefulWidget {
  @override
  _SetWalletPinState createState() => _SetWalletPinState();
}

class _SetWalletPinState extends State<SetWalletPin> {
  late final int requiredPin;
  TextEditingController _textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.green,
          ),
          onPressed: () {},
        ),
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 60.0, bottom: 10),
                child: Image.asset('images/pin logo.png'),
              ),
              const Text(
                "Setup wallets pin",
                style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 10.0),
                child: Text("Input the 4- digit code you wish to use for your Wallets pin in order to secure your account", textAlign: TextAlign.center,),
              ),
              PinCodeTextField(appContext: context, length: 4, onChanged: (value){},
                autoFocus: true,
                controller: _textEditingController,
              pinTheme: PinTheme(activeColor: Colors.green),
                onCompleted: (value){
                print(_textEditingController);
                },
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Center(
                  child: Container(
                    width: 300,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextButton(
                      onPressed: (){},
                      child: const Text('Confirm', style:  TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
