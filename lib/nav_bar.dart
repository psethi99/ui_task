import 'package:day_2/screens/battery_page.dart';
import 'package:day_2/screens/book_page.dart';
import 'package:day_2/screens/data_page.dart';
import 'package:day_2/screens/location_page.dart';
import 'package:day_2/screens/mail_page.dart';
import 'package:day_2/screens/mobile_page.dart';
import 'package:day_2/screens/storage_page.dart';
import 'package:flutter/material.dart';

class VerticalTabBar extends StatefulWidget {
  const VerticalTabBar({Key? key}) : super(key: key);

  @override
  _VerticalTabBarState createState() => _VerticalTabBarState();
}

class _VerticalTabBarState extends State<VerticalTabBar> {
  late List<Widget> _pages;
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _pages = [BatteryPage(), DataPage(), MobilePage(), LocationPage(), StoragePage() , MailPage(), BookPage() ];
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: <Widget>[
          Container(
            width: 90,
            color: Colors.indigo[800],
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                GestureDetector(
                  onTap: () => _onItemTapped(0),
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.grey.shade400,
                        width: 2,
                      ),
                      color: _selectedIndex == 0 ? Colors.green : Colors.grey,
                    ),
                    child: Icon(
                      Icons.battery_charging_full_sharp,
                      color: _selectedIndex == 0 ? Colors.white : Colors.black,
                      size: _selectedIndex == 0 ? 52 : 32,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () => _onItemTapped(1),
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.grey.shade400,
                        width: 2,
                      ),
                      color: _selectedIndex == 1 ? Colors.green : Colors.grey,
                    ),
                    child: Icon(
                      Icons.data_exploration_outlined,
                      color: _selectedIndex == 1 ? Colors.white : Colors.black,
                      size: _selectedIndex == 1 ? 52 : 32,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () => _onItemTapped(2),
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.grey.shade400,
                        width: 2,
                      ),
                      color: _selectedIndex == 2 ? Colors.green : Colors.grey,
                    ),
                    child: Icon(
                      Icons.mobile_friendly,
                      color: _selectedIndex == 2 ? Colors.white : Colors.black,
                      size: _selectedIndex == 2 ? 52 : 32,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () => _onItemTapped(3),
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.grey.shade400,
                        width: 2,
                      ),
                      color: _selectedIndex == 3 ? Colors.green : Colors.grey,
                    ),
                    child: Icon(
                      Icons.location_pin,
                      color: _selectedIndex == 3 ? Colors.white : Colors.black,
                      size: _selectedIndex == 3 ? 52 : 32,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () => _onItemTapped(4),
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.grey.shade400,
                        width: 2,
                      ),
                      color: _selectedIndex == 4 ? Colors.green : Colors.grey,
                    ),
                    child: Icon(
                      Icons.storage,
                      color: _selectedIndex == 4 ? Colors.white : Colors.black,
                      size: _selectedIndex == 4 ? 52 : 32,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () => _onItemTapped(5),
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.grey.shade400,
                        width: 2,
                      ),
                      color: _selectedIndex == 5 ? Colors.green : Colors.grey,
                    ),
                    child: Icon(
                      Icons.mail,
                      color: _selectedIndex == 5 ? Colors.white : Colors.black,
                      size: _selectedIndex == 5 ? 52 : 32,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () => _onItemTapped(6),
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.grey.shade400,
                        width: 2,
                      ),
                      color: _selectedIndex == 6 ? Colors.green : Colors.grey,
                    ),
                    child: Icon(
                      Icons.book,
                      color: _selectedIndex == 6 ? Colors.white : Colors.black,
                      size: _selectedIndex == 6 ? 52 : 32,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: _pages[_selectedIndex],
          ),
        ],
      ),
    );
  }
}