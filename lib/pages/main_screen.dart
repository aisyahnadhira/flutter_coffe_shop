import 'package:coffe_shop/pages/mainScreen/cart.dart';
import 'package:coffe_shop/pages/mainScreen/favorite.dart';
import 'package:coffe_shop/pages/mainScreen/home.dart';
import 'package:coffe_shop/pages/mainScreen/profile.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int selectedPage = 0;
  final _pageOptions = [
    HomeScreen(),
    CartScreen(),
    FavoriteScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: _pageOptions[selectedPage],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed, 
          backgroundColor: Colors.black,
          selectedItemColor: Colors.white,
          unselectedItemColor: Color.fromARGB(255, 80, 79, 79),
          iconSize: 30,
          elevation: 5.0,
          
          items: [
            BottomNavigationBarItem(
              icon: selectedPage == 0
                ? const Icon(
                  Icons.home_filled,
                  )
                : const Icon(
                  Icons.home
                ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: selectedPage == 1
                ? const Icon(
                  Icons.shopping_cart,
                  )
                : const Icon(
                  Icons.shopping_cart_outlined,
                ),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              icon: selectedPage == 2
                ? const Icon(
                  Icons.favorite,
                  )
                : const Icon(
                  Icons.favorite_border,
                ),
              label: 'Favorite',
            ),
            BottomNavigationBarItem(
              icon: selectedPage == 3
                ? const Icon(
                  Icons.person,
                  )
                : const Icon(
                  Icons.person_outline
                ),
              label: 'Profile',
            ),
          ],
          
          currentIndex: selectedPage,
          onTap: (index) {
            setState(() {
              selectedPage = index;
            });
          },
        ));
  }
}