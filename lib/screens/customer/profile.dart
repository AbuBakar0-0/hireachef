import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hireachef/screens/auth/login.dart';
import 'package:hireachef/screens/customer/password_edit.dart';
import 'package:hireachef/widgets/navigation/bottom_navigation.dart';
import 'package:hireachef/widgets/cards/profile_cards.dart';

import '../../Constants.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Image(
          image: AssetImage('assets/text-logo.png'),
          width: 170,
        ),
        backgroundColor: Constant.orange,
        iconTheme: IconThemeData(color: Constant.white),
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              setState(
                () {
                  Get.offAll(() => const Login());
                },
              );
            },
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        height: Get.height,
        width: Get.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Constant.orange,
              Constant.white,
            ],
            begin: FractionalOffset.topCenter,
            end: FractionalOffset.bottomCenter,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(200.0),
              child: const Image(
                image: AssetImage("assets/avatar-2.jpg"),
                width: 130,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "LOREM USER",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            const SizedBox(
              height: 40,
            ),
            profileCard("Name", "Lorem User"),
            profileCard("Phone No", "+92 3xx xxxxxxx "),
            profileCard("Email", "abc@gmail.com"),
            profileCard("City", "Rawalpindi"),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 5),
                  child: const Text(
                    "Password",
                    style: TextStyle(fontSize: 12),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "●●●●●●●●",
                      style: TextStyle(fontSize: 16),
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.to(()=>const PasswordEdit());
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: const Icon(
                          Icons.mode_edit_outline_outlined,
                          size: 20,
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  height: 0.5,
                  color: Colors.grey,
                )
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: navigationBar(context, 3),
    );
  }
}
