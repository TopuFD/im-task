import 'package:flutter/material.dart';
import 'package:vedio_call/widgets/custom_appber.dart';

class PrivacyPolicy extends StatelessWidget {
  const PrivacyPolicy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(100),
            child: AppBar(
              automaticallyImplyLeading: false,
              flexibleSpace: const CustomAppber(title: "Privacy and Policy"),
            )),
        body: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  
                  text:
                      'Welcome to [Your App Name]. By using our Student Management System (SMS) application, you agree to comply with the following terms and conditions. Please read them carefully.\n\n',
                  
                  style: TextStyle(
                    color: Color(0xFF383838),
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    height: 1.5,
                  ),
                ),
                TextSpan(
                  text: 'User Account\n',
                  style: TextStyle(
                    color: Color(0xFF383838),
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    height: 1.5,
                  ),
                ),
                TextSpan(
                  text:
                      'Users must provide accurate and up-to-date information during registration.\nYou are responsible for maintaining the confidentiality of your account details. Unauthorized access must be reported immediately.\n',
                  style: TextStyle(
                    color: Color(0xFF383838),
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    height: 1.5,
                  ),
                ),
                TextSpan(
                  text: '\n',
                  style: TextStyle(
                    color: Color(0xFF383838),
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    height: 1.5,
                  ),
                ),
                TextSpan(
                  text: ' Data Privacy\n',
                  style: TextStyle(
                    color: Color(0xFF383838),
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    height: 1.5,
                  ),
                ),
                TextSpan(
                  text:
                      'We collect personal and academic information for educational purposes.\nBy using the application, you consent to our collection and use of data as described in our Privacy Policy.\nData security is a priority, but we do not guarantee complete protection against breaches.\n',
                  style: TextStyle(
                    color: Color(0xFF383838),
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    height: 1.5,
                  ),
                ),
                TextSpan(
                  text: '\n',
                  style: TextStyle(
                    color: Color(0xFF383838),
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    height: 1.5,
                  ),
                ),
                TextSpan(
                  text: 'Changes to Terms\n',
                  style: TextStyle(
                    color: Color(0xFF383838),
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    height: 1.5,
                  ),
                ),
                TextSpan(
                  text:
                      'We reserve the right to modify these terms at any time. Changes will be posted within the application.',
                  style: TextStyle(
                    color: Color(0xFF383838),
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    height: 1.5,
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
