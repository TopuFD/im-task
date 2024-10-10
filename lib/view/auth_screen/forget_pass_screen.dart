// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// class ForgetPassScreen extends StatelessWidget {
//   const ForgetPassScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: ClipRRect(
//         borderRadius:  ,
//         child: Container(
//           height: Get.height,
//           width: Get.width,
//           decoration: BoxDecoration(
//             gradient: LinearGradient(
//               begin: Alignment.topLeft,
//               end: Alignment.bottomRight,
//               colors: [
//                 Color.fromARGB(255, 191, 228, 245),
//                 Colors.white,
//                 Colors.white,
//                 Colors.white,
//                 Color.fromARGB(255, 184, 238, 200),
//               ],
//             ),
//           ),
        
//             child: Center(
//               child: Text(
//                 'Linear Gradient with Rounded Corner',
//                 style: TextStyle(fontSize: 24, color: Colors.black),
//               ),
//             ),
//           ),
//       ),
//       );
//   }
// }

import 'dart:ui';

import 'package:flutter/material.dart';

class BlurBackground extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Background gradient
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                const Color.fromARGB(255, 156, 204, 158),
                Colors.white,
                Colors.white,
                Colors.white,
                Colors.white,
                Colors.white,
                const Color.fromARGB(255, 190, 213, 233)
              ],
            ),
          ),
        ),
        // Top-left blur circle
        Positioned(
          top: -100,
          left: -100,
          child: Container(
            width: 300,
            height: 300,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: const Color.fromARGB(255, 213, 240, 214).withOpacity(0.3),
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 80, sigmaY: 50),
              child: Container(color: 
                const Color.fromARGB(255, 183, 231, 185),),
            ),
          ),
        ),
        // Bottom-right blur circle
        Positioned(
          bottom: -100,
          right: -100,
          child: Container(
            width: 300,
            height: 300,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: const Color.fromARGB(255, 174, 203, 226),
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 50, sigmaY: 50),
              child: Container(color: Colors.transparent),
            ),
          ),
        ),
      ],
    );
  }
}