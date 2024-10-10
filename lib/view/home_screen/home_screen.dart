import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:vedio_call/utils/color.dart';
import 'package:vedio_call/utils/image.dart';
import 'package:vedio_call/widgets/custom_listtile.dart';
import 'package:vedio_call/widgets/custom_notifi_item.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List<Map<String, dynamic>> data = [
    {'domain': 'A', 'measure': 30},
    {'domain': 'B', 'measure': 70},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //===========================================================header here ===========================>
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
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
              ),
              Positioned(
                  right: 20,
                  top: 40,
                  child: IconButton(
                      onPressed: () {
                        _showSlidingDialog(context);
                      },
                      icon: Icon(
                        Icons.notifications,
                        color: AppColor.whiteColor,
                      ))),
              Positioned(
                  top: 80,
                  left: 140,
                  child: Row(
                    children: [
                      const Text(
                        'Shahariar',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold,
                          height: 0,
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Container(
                        height: 20,
                        width: 50,
                        decoration: BoxDecoration(
                            color: AppColor.whiteColor,
                            borderRadius: BorderRadius.circular(30)),
                        child: const Center(
                          child: Text(
                            'Edit',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w300,
                              height: 0,
                            ),
                          ),
                        ),
                      )
                    ],
                  )),
              Positioned(
                left: 40,
                bottom: -40,
                child: Container(
                  height: 90,
                  width: 90,
                  decoration: BoxDecoration(
                      border: Border.all(width: 5, color: AppColor.whiteColor),
                      color: Colors.blue,
                      shape: BoxShape.circle),
                  clipBehavior: Clip.antiAlias,
                  child: ClipOval(
                      child: Image.asset(
                    AppImage.person,
                    height: 60,
                    width: 60,
                    fit: BoxFit.cover,
                  )),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  //======================================================chart here============================>
                  PieChart(
                    dataMap: const {
                      "one": 30,
                      "Two": 20,
                      "Three": 50,
                    },
                    animationDuration: const Duration(seconds: 4),
                    chartLegendSpacing: 32,
                    chartRadius: MediaQuery.of(context).size.width / 3.2,
                    colorList: const [
                      Color(0xFF2454A8),
                      Color(0xFFFF295D),
                      Color(0xFF5E6ABF),
                    ],
                    initialAngleInDegree: 90,
                    chartType: ChartType.disc,
                    ringStrokeWidth: 32,
                    legendOptions: const LegendOptions(
                      showLegends: false,
                    ),
                    chartValuesOptions: const ChartValuesOptions(
                      showChartValueBackground: false,
                      chartValueBackgroundColor: Colors.transparent,
                      showChartValues: true,
                      showChartValuesInPercentage: true,
                      showChartValuesOutside: false,
                      decimalPlaces: 1,
                      chartValueStyle: TextStyle(
                        fontSize: 10,
                        color: Colors.white,
                      ),
                    ),
                  ),

                  const SizedBox(
                    height: 40,
                  ),
                  //================================================color details here=================>
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 18,
                              width: 18,
                              color: const Color(0xFFFF295D),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            const Text(
                              'Grades',
                              style: TextStyle(
                                color: Color(0xFF383838),
                                fontSize: 14,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Container(
                              height: 18,
                              width: 18,
                              color: const Color(0xFF2454A8),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            const Text(
                              'Attendance',
                              style: TextStyle(
                                color: Color(0xFF383838),
                                fontSize: 14,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Container(
                              height: 18,
                              width: 18,
                              color: const Color(0xFF5E6ABF),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            const Text(
                              'performance',
                              style: TextStyle(
                                color: Color(0xFF383838),
                                fontSize: 14,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  //============================================bottom content here===================>
                  CustomListtile(
                    image: AppImage.grades,
                    title: "Grades",
                    iconData: Icons.keyboard_arrow_right,
                  ),
                  CustomListtile(
                    image: AppImage.attendence,
                    title: "Grades",
                    iconData: Icons.keyboard_arrow_right,
                  ),
                  CustomListtile(
                    image: AppImage.schedule,
                    title: "Grades",
                    iconData: Icons.keyboard_arrow_right,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  void _showSlidingDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return const SlideDialog();
      },
    );
  }
}

//==========================================dialog animation class here===============================
class SlideDialog extends StatefulWidget {
  const SlideDialog({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SlideDialogState createState() => _SlideDialogState();
}

class _SlideDialogState extends State<SlideDialog>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _slideAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );

    _slideAnimation = Tween<Offset>(
      begin: const Offset(1.0, 0.0),
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _slideAnimation,
      child: Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Container(
            width: 300,
            height: 400,
            padding: const EdgeInsets.all(20),
            child: const Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Notifications',
                      style: TextStyle(
                        color: Color(0xFF243D8F),
                        fontSize: 20,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w700,
                        height: 0.07,
                        letterSpacing: 0.80,
                      ),
                    ),
                    Text(
                      'Mark all as read',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF5E6ABF),
                        fontSize: 12,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        height: 0.17,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        CustomNotifiItem(
                          title: "Grades",
                          subtitle:
                              "Your new grades have been\n\n\n\n\n\n\n\n\n\nposted",
                        ),
                        CustomNotifiItem(
                          title: "Grades",
                          subtitle:
                              "Your new grades have been\n\n\n\n\n\n\n\n\n\nposted",
                        ),
                        CustomNotifiItem(
                          title: "Grades",
                          subtitle:
                              "Your new grades have been\n\n\n\n\n\n\n\n\n\nposted",
                        ),
                      ],
                    ),
                  ),
                )
              ],
            )),
      ),
    );
  }
}
