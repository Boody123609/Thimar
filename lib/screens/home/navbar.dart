import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:thimar_application/screens/home/pages/fav/view.dart';
import 'package:thimar_application/screens/home/pages/home/view.dart';
import 'package:thimar_application/screens/home/pages/my_account/view.dart';
import 'package:thimar_application/screens/home/pages/my_orders/view.dart';
import 'package:thimar_application/screens/home/pages/notifications/view.dart';

class NavBarScreen extends StatefulWidget {
  const NavBarScreen({Key? key}) : super(key: key);

  @override
  State<NavBarScreen> createState() => _NavBarScreenState();
}

class _NavBarScreenState extends State<NavBarScreen> {
  int currentPage=0;
  List <String> titles=[
    "الرئيسية",
    "طلباتي",
    "الإشعارات",
    "المفضلة",
    "حسابي",
  ];
  List <String>icons=[
    "home",
    "orders",
    "notification",
    "fav",
    "accont",
  ];
  List<Widget>pages=[
    HomePage(),
    MyOrdersPage(),
    NotificationsPage(),
    FavPage(),
    MyAccountPage(),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentPage],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Theme.of(context).primaryColor,
        type: BottomNavigationBarType.fixed,
        onTap: (value) {
          currentPage=value;
          setState(() {

          });
        },
        selectedItemColor: Colors.white,

        unselectedItemColor: Color(0xffAED489),
        currentIndex: currentPage,

        items:List.generate(titles.length, (index) => BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(bottom: 5.0),
              child: SvgPicture.asset("assets/images/${icons[index]}.svg",color: currentPage==index?Colors.white:Color(0xffAED489),),
            ),
            label: titles[index]),),
      ),
    );
  }
}
