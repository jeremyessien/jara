import 'package:flutter/material.dart';
// import 'package:get/get.dart';
import 'package:jara/presentation/helpers/constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jara/presentation/widgets/defaultBtn.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: kPadding),
        child: Form(
          child: Column(
            children: [
              SizedBox(
                height: 30.h,
              ),
              SvgPicture.asset('assets/editProfile.svg'),
              SizedBox(
                height: 30.h,
              ),
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration:
                          const InputDecoration(label: Text('First name')),
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Expanded(
                    child: TextFormField(
                      decoration:
                          const InputDecoration(label: Text('Last name')),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              TextFormField(
                decoration: const InputDecoration(label: Text('Phone number')),
              ),
              SizedBox(
                height: 10.h,
              ),
              TextFormField(
                decoration: const InputDecoration(label: Text('Email address')),
              ),
              SizedBox(
                height: 10.h,
              ),
              TextFormField(
                decoration: const InputDecoration(
                    label: Text('Select a security question')),
              ),
              SizedBox(
                height: 10.h,
              ),
              TextFormField(
                decoration: const InputDecoration(label: Text('Password')),
              ),
              SizedBox(
                height: 10.h,
              ),
              TextFormField(
                decoration:
                    const InputDecoration(label: Text('Input your response')),
              ),
              SizedBox(
                height: 40.h,
              ),
              DefaultBtn(
                press: () {},
                text: 'Save',
                color: kGreenLight,
              )
            ],
          ),
        ),
      ),
    );
  }
}
