import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileItem extends StatelessWidget {
   ProfileItem({
    super.key,
    this.title,
    this.bioTitle,
    this.firstHeight = 60,
    this.secondHeight = 57,
  });

  final String? title;
  final String? bioTitle;
  final double firstHeight;
  final double secondHeight;
  TextEditingController bioController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: Get.width,
            height: firstHeight,
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
              height: secondHeight,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
              ),
              child: title != null
                  ? Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        title!,
                        style: const TextStyle(fontSize: 20),
                      ),
                    )
                  : Column(
                      children: [
                        SizedBox(height: 20,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Type...',
                              style: TextStyle(
                                color: Colors.black.withOpacity(0.5),
                                fontSize: 10,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w300,
                                height: 0.30,
                              ),
                            ),
                            const Text(
                              '0/360',
                              style: TextStyle(
                                color: Color(0xFF383838),
                                fontSize: 10,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w300,
                                height: 0.30,
                              ),
                            ),
                          ],
                        ),
                        TextFormField(
                          controller: bioController,
                          decoration: InputDecoration(
                            border: InputBorder.none
                          ),
                        )
                      ],
                    )),
        ],
      ),
    );
  }
}
