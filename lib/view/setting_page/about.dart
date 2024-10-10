import 'package:flutter/material.dart';
import 'package:vedio_call/widgets/custom_appber.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100),
        child: AppBar(
          automaticallyImplyLeading: false,
          flexibleSpace: const CustomAppber(title: "About"),
        ),
      ),
      body: const Padding(
        padding:  EdgeInsets.symmetric(horizontal: 10),
        child: Text(
          textAlign: TextAlign.justify,
            """Welcome to [Your App Name], your comprehensive solution for managing student data and academic progress with ease. Our Student Management System (SMS) is designed to help educational institutions streamline administrative tasks, enhance communication, and foster a collaborative learning environment.
      At [Your App Name], we believe in the power of technology to simplify complex processes. From student enrollment to grading, attendance tracking, and communication, our platform provides all the tools necessary to ensure smooth operations in schools and universities.
      We are committed to delivering a user-friendly, secure, and efficient system that meets the evolving needs of modern education. Whether you're an administrator, teacher, or student, [Your App Name] offers seamless access to the information you need, anytime, anywhere.
      Our mission is to empower institutions by reducing paperwork, improving efficiency, and enabling educators to focus on what matters most: teaching and learning.""",style: TextStyle(
                color: Color(0xFF383838),
                fontSize: 16,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
                height:1.5,
              
              ),),
      ),
    );
  }
}
