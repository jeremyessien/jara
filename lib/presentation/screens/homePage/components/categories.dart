import 'package:flutter/material.dart';
class Categories extends StatelessWidget {
  final VoidCallback press;
  final String title;
  final Icon icon;

  const Categories({
    Key? key,
    required this.press,
    required this.icon,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)))),
      onPressed: press,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: const [
          Icon(Icons.ac_unit),
          Text("All Deals"),
        ],
      ),
    );
  }
}
