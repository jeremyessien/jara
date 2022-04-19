import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jara/presentation/helpers/constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jara/presentation/screens/settings/deleteAccount/components/deleteSent.dart';
import 'package:jara/presentation/widgets/defaultBtn.dart';
import 'package:get/get.dart';
// import 'package:roundcheckbox/roundcheckbox.dart';

enum DeleteOption { time, consistency, cost, expectation, hardToFind }

class Delete extends StatefulWidget {
  const Delete({Key? key}) : super(key: key);

  @override
  _DeleteState createState() => _DeleteState();
}

class _DeleteState extends State<Delete> {
  @override
  // DeleteOption _site = DeleteOption.consistency;
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: kPadding),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Delete Account',
            textAlign: TextAlign.start,
            style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          const Text(
            'You have indicated that you would like to delete your Jara account. In order for us to improve the Jara experience, kindly let us know the reason why you have decided to delete your account below.',
            style: TextStyle(
              fontSize: 13.0,
              color: kBlack,
              fontWeight: FontWeight.w500,
            ),
          ),
          // RadioListTile(
          //   tileColor: kBlack,
          //   title: const Text ('It took me too long to find what I wanted'),
          //     value: DeleteOption.time,
          //     groupValue: DeleteOption ,
          //     onChanged: (){
          //     setState(() {
          //
          //     });
          //     },
          //   ),
          // RadioListTile(
          //   tileColor: kBlack,
          //   title: const Text ('The app is great but I do not use it often'),
          //     value:DeleteOption.consistency ,
          //     groupValue:  ,
          //     onChanged: ,
          //   ),
          //
          // RadioListTile(
          //   tileColor: kBlack,
          //   title: const Text ('I expected the app to be able to do more'),
          //     value: DeleteOption.expectation,
          //     groupValue:  ,
          //     onChanged: ,
          //   ),
          // RadioListTile(
          //   tileColor: kGrey,
          //   activeColor: kGreen,
          //   title: const Text ('It’s costing me more than I expected'),
          //     value: DeleteOption.cost,
          //     groupValue: _site ,
          //     onChanged:(value){
          //       setState((){
          //         _site =  value!;
          //       });
          //     },
          //   ),
          // RadioListTile(
          //   tileColor: kBlack,
          //   title: const Text ('It took me too long to find what I wanted'),
          //     value: DeleteOption.hardToFind,
          //     groupValue:  ,
          //     onChanged: ,
          //   ),
          // RadioListTile(
          //   tileColor: kBlack,
          //   title: const Text ('Other'),
          //     value: ,
          //     groupValue:  ,
          //     onChanged:,
          //   ),
          const SizedBox(
            height: 20.0,
          ),
          DefaultBtn(
            press: () => Get.to(() => const DeleteSent()),
            text: 'Delete',
            color: kGreen,
          ),
        ],
      ),
    );
  }
}
