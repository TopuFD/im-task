import 'package:flutter/material.dart';

class CustomNotifiItem extends StatelessWidget {
  const CustomNotifiItem({super.key, this.title, this.subtitle});
  final String? title;
  final String? subtitle;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.all(5),
      width: 344,
      height: 100,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black
        )
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title!,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Color(0xFF383838),
                  fontSize: 14,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                  height: 0.14,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                subtitle!,
                style: const TextStyle(
                  color: Color(0xFF383838),
                  fontSize: 14,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w300,
                  height: 0.14,
                ),
              ),
            ],
          ),
          const Icon(Icons.keyboard_arrow_right)
        ],
      ),
    );
  }
}
