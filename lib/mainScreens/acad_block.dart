import 'package:flutter/material.dart';
import 'package:mess_portal/themeing/notifier.dart';
import 'package:google_fonts/google_fonts.dart';

class AcadBlock extends StatefulWidget {
  const AcadBlock({Key? key}) : super(key: key);

  @override
  _AcadBlockState createState() => _AcadBlockState();
}

class _AcadBlockState extends State<AcadBlock> {
  Color alphaWhite200 = Colors.white.withAlpha(200);
  Color lightGreen = const Color(0xFF73cdbb);
  Color darkGreen = const Color(0xFF1ca3a6);

  Widget getPanel() {
    return Column();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: theme.backgroundColor,
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: RadialGradient(
                  colors: [Color(0xFF73cdbb), Color(0xFF1ca3a6)],
                  radius: 1.3,
                  center: Alignment(-1, 0),
                  stops: [0.0, 1.0],
                  tileMode: TileMode.clamp),
            ),
            height: 1000,
            width: 500,
          ),
          Positioned(
            right: 0,
            top: 150,
            child: Container(
              decoration: BoxDecoration(
                color: lightGreen.withAlpha(50),
                shape: BoxShape.circle,
              ),
              height: 100,
              width: 100,
            ),
          ),
          Positioned(
            right: 250,
            top: 50,
            child: Container(
              decoration: BoxDecoration(
                color: lightGreen.withAlpha(50),
                shape: BoxShape.circle,
              ),
              height: 200,
              width: 200,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const SizedBox(
                  height: 100,
                ),
                Center(
                  child: Text("Directory",
                      style: GoogleFonts.raleway(
                        fontWeight: FontWeight.bold,
                        // fontStyle: FontStyle.italic,
                        height: 1.5,
                        color: Colors.white,
                        fontSize: 30,
                      )),
                ),
                const SizedBox(
                  height: 30,
                ),
                TextField(
                  style: TextStyle(color: alphaWhite200),
                  cursorColor: alphaWhite200,
                  decoration: InputDecoration(
                      focusColor: Colors.white,
                      fillColor: const Color(0x5973cdbb),
                      filled: true,
                      hintText: "Enter Name/Email",
                      hintStyle: GoogleFonts.raleway(color: alphaWhite200),
                      prefixIcon: Icon(
                        Icons.search,
                        color: alphaWhite200,
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: alphaWhite200, width: 0.0),
                          borderRadius: BorderRadius.circular(15)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.white.withAlpha(255), width: 0.0),
                          borderRadius: BorderRadius.circular(15)),
                      border: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.white, width: 0.0),
                          borderRadius: BorderRadius.circular(15))),
                ),
              ],
            ),
          ),
          Positioned(
              top: 300,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Container(
                    width: MediaQuery.of(context).size.width,
                    color: Colors.white,
                    height: MediaQuery.of(context).size.height,
                    child: Column(
                      children: [
                        getPanel(),
                      ],
                    )),
              ))
        ],
      ),
    );
  }
}
