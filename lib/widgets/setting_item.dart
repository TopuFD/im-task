import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingItem extends StatefulWidget {
  const SettingItem(
      {super.key,
      this.isSwitch = false,
      this.isIcon = false,
      required this.title});

  final String title;
  final bool isSwitch;
  final bool isIcon;

  @override
  State<SettingItem> createState() => _SettingItemState();
}

class _SettingItemState extends State<SettingItem> {
  bool switchValue = false;
  bool isEnglish = false;
  bool isBangla = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: Get.width,
            height: 60,
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [
                  Color(0xFF243D8F),
                  Color(0xFF2454A8),
                  Color(0xFF79B9E5),
                  Color(0xFF8FCBF0),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
              borderRadius: BorderRadius.circular(5),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            margin: const EdgeInsets.symmetric(horizontal: 1.5),
            width: Get.width,
            height: 57,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.title,
                  style: const TextStyle(
                    color: Color(0xFF383838),
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                if (widget.isSwitch && !widget.isIcon)
                  Switch(
                    value: switchValue,
                    onChanged: (value) {
                      setState(() {
                        switchValue = value;
                      });
                    },
                  ),
                if (!widget.isSwitch && widget.isIcon)
                  const Icon(Icons.keyboard_arrow_right, color: Colors.black),
                if (!widget.isSwitch && !widget.isIcon)
                  Container(
                    height: 40,
                    width: 100,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.blue),
                        borderRadius: BorderRadius.circular(30)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: (){
                            setState(() {
                              isEnglish = false;
                              isBangla = true;
                            });
                          },
                          child: Container(
                            height: 40,
                            width: 49,
                            decoration: BoxDecoration(
                              color: isBangla?Colors.blue:Colors.white,
                                border: Border.all(color: Colors.blue),
                                borderRadius: const BorderRadius.only(
                                  bottomLeft: Radius.circular(30),
                                  topLeft: Radius.circular(30),
                                )),
                            child: Center(child: Text("বাং",style: TextStyle(color: isBangla?Colors.white:Colors.black),)),
                          ),
                        ),
                        InkWell(
                          onTap: (){
                            setState(() {
                              isBangla= false;
                              isEnglish = true;
                            });
                          },
                          child: Container(
                            height: 40,
                            width: 49,
                            decoration: BoxDecoration(
                                color: isEnglish?Colors.blue:Colors.white,
                                border: Border.all(color: Colors.blue),
                                borderRadius: const BorderRadius.only(
                                  bottomRight: Radius.circular(30),
                                  topRight: Radius.circular(30),
                                )),
                            child: Center(child: Text("ENG",style: TextStyle(color: isEnglish? Colors.white:Colors.black),)),
                          ),
                        )
                      ],
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
