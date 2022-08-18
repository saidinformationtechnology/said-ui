import 'package:flutter/material.dart';
import 'package:lastsaid/pages/home/user_home.dart';
import '../home/facilityPage/facility_page.dart';
import '../home/support.dart';
import '../home/task_info.dart';

class MyBottomNavigation extends StatefulWidget {
  const MyBottomNavigation({Key? key}) : super(key: key);

  @override
  State<MyBottomNavigation> createState() => _MyBottomNavigationState();
}

class _MyBottomNavigationState extends State<MyBottomNavigation> {
  void onTabTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  int _selectedIndex = 3;

  int currentTabs = 3;
  final List<Widget> screens = [
    const FacilityPage(),
    const Support(),
    const TaskInfo(),
    const UserHome()
  ];
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = const UserHome();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        bucket: bucket,
        child: currentScreen,
      ),
      floatingActionButton: Visibility(
        visible: MediaQuery.of(context).viewInsets.bottom == 0.0,
        child: FloatingActionButton(
          backgroundColor: const Color.fromRGBO(50, 185, 215, 1),
          child: const ImageIcon(
            AssetImage('assets/icons/Scanned.png'),
            color: Color(0xFF0268B2),
          ),
          onPressed: () {},
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 0,
        child: SizedBox(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: 100,
                    onPressed: () {
                      onTabTapped(0);

                      setState(() {
                        currentScreen = const FacilityPage();
                        currentTabs = 0;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ImageIcon(const AssetImage('assets/icons/store.png'),
                            color: _selectedIndex == 0
                                ? const Color(0xFF0368B2)
                                : const Color(0xFFC1C7D0)),
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      onTabTapped(1);
                      setState(() {
                        currentScreen = const Support();
                        currentTabs = 1;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ImageIcon(const AssetImage('assets/icons/headphone.png'),
                            color: _selectedIndex == 1
                                ? const Color(0xFF0368B2)
                                : const Color(0xFFC1C7D0)),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: 100,
                    onPressed: () {
                      onTabTapped(2);
                      setState(() {
                        currentScreen = const TaskInfo();
                        currentTabs = 2;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ImageIcon(const AssetImage('assets/icons/diagram.png'),
                            color: _selectedIndex == 2
                                ? const Color(0xFF0368B2)
                                : const Color(0xFFC1C7D0)),
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      onTabTapped(3);
                      setState(() {
                        currentScreen = const UserHome();
                        currentTabs = 3;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ImageIcon(const AssetImage('assets/icons/home.png'),
                            color: _selectedIndex == 3
                                ? const Color(0xFF0368B2)
                                : const Color(0xFFC1C7D0)),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
