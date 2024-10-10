import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vedio_call/core/app_route.dart';
import 'package:vedio_call/utils/color.dart';
import 'package:vedio_call/utils/image.dart';
import 'package:vedio_call/widgets/profile_item.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //===========================================================header here ===========================>
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                height: 120,
                width: Get.width,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xFF243D8F),
                      Color(0xFF2454A8),
                      Color(0xFF3C72BA),
                      Color(0xFF5B93CC),
                      Color(0xFF79B9E5),
                      Color(0xFF8FCBF0)
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
              ),
              Positioned(
                  right: 20,
                  top: 40,
                  child: IconButton(
                      onPressed: () {
                        Get.toNamed(AppRoute.settingsPage);
                      },
                      icon: Icon(
                        Icons.settings,
                        color: AppColor.whiteColor,
                      ))),
              const Positioned(
                  top: 80,
                  left: 140,
                  child: Text(
                    'Shahariar',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                      height: 0,
                    ),
                  )),
              Positioned(
                left: 40,
                bottom: -40,
                child: Container(
                  height: 90,
                  width: 90,
                  decoration: BoxDecoration(
                      border: Border.all(width: 5, color: AppColor.whiteColor),
                      color: Colors.blue,
                      shape: BoxShape.circle),
                  clipBehavior: Clip.antiAlias,
                  child: ClipOval(
                      child: Image.asset(
                    AppImage.person,
                    height: 60,
                    width: 60,
                    fit: BoxFit.cover,
                  )),
                ),
              )
            ],
          ),

          SizedBox(
            height: Get.height * .05,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: Get.height * .05,
                  ),
                  //=============================================user personal information==================
                  const Text(
                    'Personal information',
                    style: TextStyle(
                      color: Color(0xFF303030),
                      fontSize: 20,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      height: 0.07,
                    ),
                  ),

                  const SizedBox(
                    height: 20,
                  ),
                  ProfileItem(
                    title: "Class : 10",
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ProfileItem(
                    title: "Roll:20",
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ProfileItem(
                    title: "Section : 20",
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ProfileItem(
                    title: "Email: abc@gmail.com",
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ProfileItem(
                    title: "Gender : Male",
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ProfileItem(
                    title: "Mobile : +8801234-567890",
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  //=======================================================bio information here==============
                  const Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Bio :',
                        style: TextStyle(
                          color: Color(0xFF5E6ABF),
                          fontSize: 14,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          height: 0.15,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ProfileItem(
                    bioTitle: "Type...",
                    firstHeight: 200,
                    secondHeight: 197,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
