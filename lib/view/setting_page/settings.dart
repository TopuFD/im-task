import 'package:flutter/material.dart';
import 'package:vedio_call/widgets/custom_appber.dart';
import 'package:vedio_call/widgets/setting_item.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: AppBar(
          automaticallyImplyLeading: false,
          flexibleSpace: const CustomAppber(
            title: "Settings",
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 20,),
          SettingItem(title: "Dark Mode",isSwitch: true,),
          SizedBox(height: 20,),
          SettingItem(title: "Privacy & Security",isIcon: true,),
          SizedBox(height: 20,),
          SettingItem(title: "Show All Notification",isSwitch: true,),
          SizedBox(height: 20,),
          SettingItem(title: "about",isIcon: true,),
          SizedBox(height: 20,),
          SettingItem(title: "language",),
          SizedBox(height: 20,),
          SettingItem(title: "Log Out",isIcon: true,),
        ],
      ),
    );
  }
}