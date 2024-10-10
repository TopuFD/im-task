import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomAppber extends StatelessWidget {
  const CustomAppber({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
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
      child: Row(
        children: [
          IconButton(
              onPressed: () {
                Get.back();
              },
              icon: const Icon(Icons.arrow_back,color: Colors.white,)),
          SizedBox(
            width: Get.width/1.5,
            child: Align(
              alignment: Alignment.center,
              child: Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
