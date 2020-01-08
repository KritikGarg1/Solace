import 'package:flutter/material.dart';
import 'JobsPage.dart';
import 'WalletPage.dart';
import 'ProfilePage.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

int _currentIndex = 0;

class _HomePageState extends State<HomePage> {

  final List<Widget> pages = [
    JobsPage(
      key: PageStorageKey('Page1'),
    ),
    WalletPage(
      key: PageStorageKey('Page2'),
    ),
    ProfilePage(
      key: PageStorageKey('Page3'),
    ),
  ];

  final PageStorageBucket bucket = PageStorageBucket();

  @override
  Widget build(BuildContext context) {


    print(_currentIndex);
    return MaterialApp(theme:ThemeData(accentColor: Colors.deepOrange),
      home: Scaffold(
        body: PageStorage(
          child: pages[_currentIndex],
          bucket: bucket,
        ),
        appBar: AppBar(
          title: Image.asset('assets/appbar.png', fit: BoxFit.contain),
          backgroundColor: Color.fromRGBO(232, 232, 232, 90),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          items: [
            BottomNavigationBarItem(
              activeIcon: Image(
                image: AssetImage(
                  'assets/a_tools.png',
                ),
                width: 31,
                height: 31,
              ),
              icon: Image(
                  image: AssetImage('assets/tools.png'), width: 30, height: 30),
              title: Text(''),
            ),
            BottomNavigationBarItem(
                icon: Image(
                    image: AssetImage('assets/wallet.png'),
                    width: 25,
                    height: 25),
                title: Text(''),
                activeIcon: Image(
                    image: AssetImage('assets/a_wallet.png'),
                    width: 28,
                    height: 28)),
            BottomNavigationBarItem(
              activeIcon: Image(
                  image: AssetImage('assets/a_profile.png'),
                  width: 28,
                  height: 28),
              icon: Image(
                  image: AssetImage('assets/profile.png'),
                  width: 25,
                  height: 25),
              title: Text(''),
            ),
          ],
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
      ),
    );
  }
}
