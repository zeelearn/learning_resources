import 'package:flutter/material.dart';
import 'settings/Settings.dart';
import 'alert/alerts.dart';
import 'home/homepage.dart';

class MainPage extends StatefulWidget {
  final int index;
  const MainPage({Key? key, this.index=0}) : super(key: key);
  @override
  _MainPageState createState() => _MainPageState();
}



class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;

  final List<Widget> _children = [
    const HomePage(),
    const AlertsPage(),
    const SettingPage(),
  ];

  @override
  void initState() {
    _currentIndex = widget.index;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        bool willLeave = false;
         const HomePage();
        // show the confirm dialog
        await showDialog(
            context: context,
            builder: (_) => AlertDialog(
              title: const Text('Are you sure want to leave?'),
              actions: [
                MaterialButton(
                    shape:  RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0)),
                    color: const Color(0xfffD12121),
                    onPressed: () {
                      willLeave = true;
                      Navigator.of(context).pop();
                    },
                    child: const Text('Yes',style: TextStyle(color: Colors.white),)),
                TextButton(
                    onPressed: () => Navigator.of(context).pop(),
                    child: const Text('No',style: TextStyle(color: Colors.black),))
              ],
            ));
        return willLeave;
      },
      child: Scaffold(
        drawer:  Drawer(
          child: ListView(
            children: [
             const UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                  accountName: Text(
                    "Shailendra Sharma ",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  accountEmail: Text(
                    "Shailendra.sharma@kidzee.com",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  currentAccountPicture: FlutterLogo(),
              ),
              ListTile(
                leading: const Icon(
                  Icons.home,
                ),
                title: const Text('Home'),
                onTap: () {
                  Navigator.pop(context);
                 // Get.to(()=>const HomePage());
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.add_alert_sharp,
                ),
                title: const Text('Alerts'),
                onTap: () {
                  Navigator.pop(context);
                 // Get.to(()=>const AlertsPage());
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.settings,
                ),
                title: const Text('Settings'),
                onTap: () {
                  Navigator.pop(context);
                 // Get.to(()=>const SettingPage());
                },
              ),
            ],
          ),
        ),
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Learning Resources"),
          backgroundColor: const Color(0xff2e3191),
        ),
         body: _children[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor:const Color(0xff2e3191),
          selectedItemColor: const Color(0xffea1a27),
          unselectedItemColor: Colors.white,
          selectedFontSize: 12,
          onTap: onTabTapped,
          currentIndex: _currentIndex,

          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_alert),
              label: "Alerts",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: "Settings",
            ),
          ],
        ),
      ),
    );
  }
  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
