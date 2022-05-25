import 'package:flutter/material.dart';
import 'package:mess_portal/utilities/constants.dart';
import 'package:mess_portal/themeing/notifier.dart';
import 'package:mess_portal/utilities/bottomNavBar.dart';
import 'package:mess_portal/mainScreens/crowd.dart';
import 'package:mess_portal/mainScreens/acad_block.dart';
import 'package:mess_portal/mainScreens/qr_code.dart';
import 'package:mess_portal/maps/screens/googlemap.dart';

import 'mainHome.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  get floatingActionButtonLocation => null;

  get floatingActionButton => null;

  void initState() {
    super.initState();
    _pageController = PageController();
    WidgetsBinding.instance?.addPostFrameCallback((_) {
      if (_pageController.hasClients) {
        _pageController.jumpToPage(selectedIndex);
      }
    });
  }

  late PageController _pageController;
  int selectedIndex = 0;

  Widget homeScreen() {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: theme.backgroundColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Container(),
        leading: IconButton(
          icon: Icon(
            (darkMode) ? Icons.wb_sunny : Icons.wb_sunny_outlined,
            color: (darkMode) ? Colors.purple : Colors.black,
          ),
          onPressed: () {
            if (darkMode) {
              darkMode = false;
            } else {
              darkMode = true;
            }
            swapTheme(darkMode);
            setState(() {});
          },
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.refresh,
                color: Colors.grey.withAlpha(100),
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.exit_to_app,
                color: Colors.grey.withAlpha(100),
              ))
        ],
      ),
      bottomNavigationBar: BottomNavyBar(
          backgroundColor: theme.bottomNavyBarColor,
          selectedIndex: selectedIndex,
          showElevation: true,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          onItemSelected: (index) {
            selectedIndex = index;
            _pageController.jumpToPage(index);
            setState(() {});
          },
          items: [
            BottomNavyBarItem(
              icon: Icon(Icons.apps, color: theme.textSubheadingColor),
              title: Text(
                'Home',
                style: TextStyle(color: theme.textSubheadingColor),
              ),
              activeColor: theme.bottomNavyBarIndicatorColor,
              inactiveColor: Colors.grey,
              textAlign: TextAlign.center,
            ),
            BottomNavyBarItem(
              icon: Icon(Icons.qr_code, color: theme.textSubheadingColor),
              title: Text(
                'QR Portal',
                style: TextStyle(color: theme.textSubheadingColor),
              ),
              activeColor: theme.bottomNavyBarIndicatorColor,
              inactiveColor: Colors.grey,
              textAlign: TextAlign.center,
            ),
            BottomNavyBarItem(
              icon:
                  Icon(Icons.people_outline, color: theme.textSubheadingColor),
              title: Text(
                'Crowd',
                style: TextStyle(color: theme.textSubheadingColor),
              ),
              activeColor: theme.bottomNavyBarIndicatorColor,
              inactiveColor: Colors.grey,
              textAlign: TextAlign.center,
            ),
            BottomNavyBarItem(
            icon: Icon(
              Icons.map,
              color: theme.textSubheadingColor,
            ),
            textAlign: TextAlign.center,
            title: Text(
              'Map',
              style: TextStyle(color: theme.textSubheadingColor),
            ),
            activeColor: theme.bottomNavyBarIndicatorColor,
            inactiveColor: Colors.grey,
          ),
          ]),
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        children: [
          MainHome(),
          Qr_code(),
          Crowd(),
          Map(),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return homeScreen();
  }
}
