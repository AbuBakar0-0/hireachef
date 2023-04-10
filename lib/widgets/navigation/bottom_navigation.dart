import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hireachef/screens/customer/chat_main.dart';
import 'package:hireachef/screens/customer/home.dart';
import 'package:hireachef/screens/customer/notification.dart';
import 'package:hireachef/screens/customer/profile.dart';

import '../../Constants.dart';

navigationBar(context, indexNo) {
  return CurvedNavigationBar(
    backgroundColor: Constant.orange,
    color: Constant.white,
    items: const [
      Icon(
        Icons.home,
        size: 15,
        color: Colors.black,
      ),
      Icon(
        Icons.message_outlined,
        size: 15,
        color: Colors.black,
      ),
      Icon(
        Icons.notifications_active_outlined,
        size: 15,
        color: Colors.black,
      ),
      Icon(
        Icons.person,
        size: 15,
        color: Colors.black,
      ),
    ],
    index: indexNo,
    height: 50,
    animationDuration: const Duration(milliseconds: 200),
    animationCurve: Curves.bounceInOut,
    onTap: (index) async {
      if (index == 0) {
        await Future.delayed(const Duration(milliseconds: 200));
        Get.offAll(() => const Home());
      }
      if (index == 1) {
        await Future.delayed(const Duration(milliseconds: 200));
        Get.offAll(() => const ChatMain());
      }
      if (index == 2) {
        await Future.delayed(const Duration(milliseconds: 200));
        Get.offAll(() => const Notifications());
      }
      if (index == 3) {
        await Future.delayed(const Duration(milliseconds: 200));
        Get.offAll(() => const Profile());
      }
    },
  );
}