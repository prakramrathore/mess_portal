import 'package:flutter/material.dart';
import 'package:mess_portal/mainScreens/feedback.dart';
import 'package:mess_portal/themeing/notifier.dart';
import 'package:circular_reveal_animation/circular_reveal_animation.dart';
import 'package:mess_portal/mainScreens/components/clipper.dart';
import 'package:flutter_svg/flutter_svg.dart';

// ignore: camel_case_types
class Qr_code extends StatefulWidget {
  const Qr_code({Key? key}) : super(key: key);

  @override
  State<Qr_code> createState() => _Qr_codeState();
}

class _Qr_codeState extends State<Qr_code> with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> animation;

  bool _isCollapsed = false;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 1000),
    );
    animation = CurvedAnimation(
      parent: animationController,
      curve: Curves.easeIn,
    );
  }

  @override
  Widget _buildPopupDialog(BuildContext context) {
    return AlertDialog(
        title: const Text('Scan'),
        content: SizedBox(
          width: 250,
          height: 300,
          child: Stack(
            children: [
              Image.network(
                  "https://www.qr-code-generator.com/wp-content/themes/qr/new_structure/markets/core_market_full/generator/dist/generator/assets/images/websiteQRCode_noFrame.png"),
              Container(
                alignment: Alignment.bottomCenter,
                child: FloatingActionButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Icon(Icons.close),
                ),
              )
            ],
          ),
        ));
  }

  @override
  Widget _buildPopupDialog1(BuildContext context) {
    return AlertDialog(
        title: const Text('Mess Menu / Mess Imp Updates'),
        content: Container(
          height: 300,
          width: 250,
          child: const Center(
            child: Text(
              "Today's menu or Mess important updates will be updated here",
            ),
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppConsts.appBlueColor,
      body: Stack(children: [
        Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: const [
                0.1,
                0.3,
                0.7,
                1
              ],
                  colors: [
                Colors.pink.shade300,
                Colors.blue.shade600,
                Colors.blue.shade400,
                Colors.pink
              ])),
          child: Container(
            color: Colors.black.withOpacity(0.3),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(30, 90, 30, 30),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  color: Colors.white,
                  // color: AppConsts.appBlueColor,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Stack(children: [
                      Container(
                        height: MediaQuery.of(context).size.height,
                        color: Colors.cyan.shade50.withOpacity(0.5),
                      ),
                      SingleChildScrollView(
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                IconButton(
                                  icon: Icon(Icons.qr_code_scanner_sharp),
                                  onPressed: () {
                                    showGeneralDialog(
                                      context: context,
                                      barrierDismissible: true,
                                      barrierLabel: "Label",
                                      transitionDuration:
                                          Duration(milliseconds: 700),
                                      pageBuilder: (context, anim1, anim2) =>
                                          _buildPopupDialog(context),
                                      transitionBuilder:
                                          (context, anim1, anim2, child) {
                                        return CircularRevealAnimation(
                                          child: child,
                                          animation: anim1,
                                          centerAlignment: Alignment.center,
                                        );
                                      },
                                    );
                                  },
                                ),
                                IconButton(
                                  icon: Icon(Icons.info),
                                  onPressed: () {
                                    showDialog(
                                      context: context,
                                      builder: (BuildContext context) =>
                                          _buildPopupDialog1(context),
                                    );
                                  },
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              // height: MediaQuery.of(context).size.height,
                              child: const Center(
                                child: Text(
                                  "Prakram Rathore",
                                  style: TextStyle(
                                    fontSize: 30,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              child: const Center(
                                child: Text(
                                  "ORD_9442064629",
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(150),
                              child: Container(
                                decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                        stops: const [
                                      0.1,
                                      0.3,
                                      0.7,
                                      1
                                    ],
                                        colors: [
                                      Colors.pink.shade300,
                                      Colors.blue.shade600,
                                      Colors.blue.shade400,
                                      Colors.pink
                                    ])),
                                child: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(150),
                                    child: Image.network(
                                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTMicVSEG89FdG2vuQGR8rHPgFWYIQyj_IGwg&usqp=CAU',
                                      // '',
                                      width: 100,
                                      height: 100,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: const [
                                Text(
                                  "E-mail",
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                                Text(
                                  "prakram.rathore@iitgn.ac.in",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 1,
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: const [
                                Text(
                                  "Roll No",
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                                Text(
                                  "20110141",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 1,
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: const [
                                Text(
                                  "Duration",
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                                Text(
                                  "2022-01-03 - 2022-05-02",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 1,
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: const [
                                Text(
                                  "Mess",
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                                Text(
                                  "jaiswal",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 1,
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: const [
                                Text(
                                  "Academic Year",
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                                Text(
                                  "2021-2022",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 1,
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: const [
                                Text(
                                  "Program",
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                                Text(
                                  "B.Tech",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 1,
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: const [
                                Text(
                                  "Semester",
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                                Text(
                                  "2",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 1,
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: const [
                                  Text(
                                    "Active From",
                                    style: TextStyle(
                                      color: Colors.grey,
                                    ),
                                  ),
                                  Text(
                                    "2022-01-03",
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                  ),
                                ]),
                            const SizedBox(
                              height: 15,
                            ),
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: const [
                                  Text(
                                    "Active To",
                                    style: TextStyle(
                                      color: Colors.grey,
                                    ),
                                  ),
                                  Text(
                                    "     2022-05-02",
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                  ),
                                ])
                          ],
                        ),
                      ),
                    ]),
                  ),
                ),
              ),
            ),
          ),
        ),
        // Container(
        //   color: Colors.greenAccent.withOpacity(0.3),
        // ),
        AnimatedPositioned(
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
          left: _isCollapsed ? -120 : size.width - 65,
          child: Stack(
            children: [
              ClipPath(
                clipper: MyClipper(),
                child: Container(
                  padding: const EdgeInsets.all(10),
                  height: size.height,
                  width: size.width + 90,
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                    colors: [
                      // AppConsts.appOrangeColor,
                      // AppConsts.appDeepOrange,
                      Color(0xFF485461),
                      Color(0xFF28313b),
                    ],
                  )),
                  child: feedback(),
                ),
              ),
              Positioned(
                left: 8,
                top: size.height * 0.65 + 37,
                child: GestureDetector(
                  onTap: () => setState(() {
                    _isCollapsed = !_isCollapsed;
                  }),
                  child: Container(
                    height: 46,
                    width: 46,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: AppConsts.appBlueColor,
                      boxShadow: const [
                        BoxShadow(
                          color: AppConsts.appDarkBlueColor,
                          blurRadius: 5,
                        )
                      ],
                    ),
                    child: Center(
                      child: SvgPicture.asset(
                        'assets/feedback.svg',
                        color: Colors.white,
                        height: 20,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                right: 7,
                top: size.height * 0.65 + 37,
                child: GestureDetector(
                  onTap: () => setState(() {
                    _isCollapsed = !_isCollapsed;
                  }),
                  child: Container(
                    height: 46,
                    width: 46,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: AppConsts.appBlueColor,
                      boxShadow: const [
                        BoxShadow(
                          color: AppConsts.appDarkBlueColor,
                          blurRadius: 5,
                        )
                      ],
                    ),
                    child: Center(
                      child: SvgPicture.asset(
                        'assets/return.svg',
                        color: Colors.white,
                        height: 26,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
