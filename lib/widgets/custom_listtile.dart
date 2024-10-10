import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomListtile extends StatelessWidget {
   CustomListtile({super.key,this.iconData,this.title,this.image});

   String? image;
   String? title;
   IconData? iconData;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      height: 100,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey
        )
      ),
      child: Center(
        child: ListTile(
          leading: Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Image.asset(image!),
          ),
          title: Text(title!),
          trailing: Icon(iconData),
          
        ),
      ),
    );
  }
}