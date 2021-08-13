import 'package:flutter/material.dart';
import 'package:flutter_course/constants.dart';


class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      height: 75,
      decoration: BoxDecoration(
        // gradient: LinearGradient(colors: [
        //   kBlueColor,
        //   kBlueLightColor,
        // ]),
        // color: kBlueColor,
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -8),
            color: Colors.black26.withOpacity(0.10),
            blurRadius: 21,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          BottomNavItem(
            title: "Home",
            icon: Icons.home_filled,
            isActive: true,
            press: () {},
          ),
          BottomNavItem(
            title: "Course",
            icon: Icons.graphic_eq,
            press: () {},
          ),
          BottomNavItem(
            title: "Profile",
            icon: Icons.person,
            press: () {},
          ),
        ],
      ),
    );
  }
}

class BottomNavItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback press;
  final bool isActive;
  const BottomNavItem({
    Key? key,
    required this.title,
    required this.press,
    this.isActive = false,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Icon(
            icon,
            color: isActive ? kBlueColor : Colors.black38,
            size: 32,
          ),
          Text(
            title,
            style: TextStyle(
                color: isActive ? kBlueColor : Colors.black38, fontSize: 12),
          ),
        ],
      ),
    );
  }
}
