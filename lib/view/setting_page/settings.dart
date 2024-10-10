import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vedio_call/core/app_route.dart';
import 'package:vedio_call/widgets/custom_appber.dart';
import 'package:vedio_call/widgets/setting_item.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100),
        child: AppBar(
          automaticallyImplyLeading: false,
          flexibleSpace: const CustomAppber(
            title: "Settings",
          ),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          SettingItem(
            title: "Dark Mode",
            isSwitch: true,
          ),
          const SizedBox(
            height: 20,
          ),
          SettingItem(
            ontap: (){
              Get.toNamed(AppRoute.pricacyPolicy);
            },
            title: "Privacy & Security",
            isIcon: true,
          ),
          const SizedBox(
            height: 20,
          ),
          SettingItem(
            title: "Show All Notification",
            isSwitch: true,
          ),
          const SizedBox(
            height: 20,
          ),
          SettingItem(
            ontap: () {
              Get.toNamed(AppRoute.aboutPage);
            },
            title: "about",
            isIcon: true,
          ),
          const SizedBox(
            height: 20,
          ),
          SettingItem(
            title: "language",
          ),
          const SizedBox(
            height: 20,
          ),
          SettingItem(
            ontap: () {
              logoutDialog();
            },
            title: "Log Out",
            isIcon: true,
          ),
        ],
      ),
    );
  }

  //==========================================logout dialog here=============>
  void logoutDialog() {
    Get.defaultDialog(
        title: "Log Out",
        content: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            InkWell(
              onTap: () {
                Get.offNamed(AppRoute.signinScreen);
              },
              child: Container(
                height: 36,
                width: 92,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(5)),
                child: const Center(
                    child: Text(
                  "Yes",
                  style: TextStyle(color: Colors.white),
                )),
              ),
            ),
            InkWell(
              onTap: () {
                Get.back();
              },
              child: Container(
                height: 36,
                width: 92,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(5)),
                child: const Center(
                  child: Text(
                    "No",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
