import 'package:flutter/material.dart';
import 'package:gamestore/pages/home/widgets/header.dart';
import 'package:gamestore/pages/home/widgets/search.dart';
import 'package:gamestore/pages/home/widgets/category.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff5F67EA),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Transform(
              transform: Matrix4.identity()..rotateZ(20),
              origin: const Offset(150, 50),
              child: Image.asset(
                'assets/images/bg_liquid.png',
                width: 200,
              ),
            ),
            Positioned(
              right: 0,
              top: 200,
              child: Transform(
                transform: Matrix4.identity()..rotateZ(20),
                origin: const Offset(180, 100),
                child: Image.asset(
                  'assets/images/bg_liquid.png',
                  width: 200,
                ),
              ),
            ),
            Column(
              children: [
                HeaderSection(),
                SearchSection(),
                CategorySection(),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: navigationBar(), 
    );
  }
}

Widget navigationBar() {
  return Container(
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
            // ignore: deprecated_member_use
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 5,
            blurRadius: 10),
      ],
    ),
    child: ClipRRect(
      child: BottomNavigationBar(
        selectedItemColor: const Color(0xFF5F67EA),
        selectedFontSize: 12,
        unselectedFontSize: 12,
        // ignore: deprecated_member_use
        unselectedItemColor: Colors.grey.withOpacity(0.7),
        type: BottomNavigationBarType.fixed,
        items: [
          const BottomNavigationBarItem(
            label: 'home',
            icon: Icon(
              Icons.home_rounded,
              size: 50,
            ),
          ),
          BottomNavigationBarItem(
            label: "Application",
            icon: Container(
              margin: const EdgeInsets.all(5),
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                // ignore: deprecated_member_use
                color: Colors.grey.withOpacity(0.2),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Icon(
                Icons.more_horiz_outlined,
                size: 30,
                color: Colors.grey,
              ),
            ),
          ),
          BottomNavigationBarItem(
            label: "Film",
            icon: Container(
              margin: const EdgeInsets.all(5),
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                // ignore: deprecated_member_use
                color: Colors.grey.withOpacity(0.2),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Icon(
                Icons.play_arrow_rounded,
                size: 30,
                color: Colors.grey,
              ),
            ),
          ),
          BottomNavigationBarItem(
            label: "Book",
            icon: Container(
              margin: const EdgeInsets.all(5),
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                // ignore: deprecated_member_use
                color: Colors.grey.withOpacity(0.2),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Icon(
                Icons.auto_stories_rounded,
                size: 30,
                color: Colors.grey,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}