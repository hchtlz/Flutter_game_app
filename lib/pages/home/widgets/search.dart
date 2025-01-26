import 'package:flutter/material.dart';

class SearchSection extends StatelessWidget {
  const SearchSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
      child: Stack(
        children: [
          const TextField(
            decoration: InputDecoration(
              hintText: 'Search for games...',
              hintStyle: TextStyle(color: Color(0xffA0A3BD)),
              prefixIcon: Icon(Icons.search, color: Color(0xffA0A3BD)),
              filled: true,
              fillColor: Color(0xfff6f8ff),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                borderSide: BorderSide.none,
              ),
            ),
          ),
          Positioned(
            right: 12,
            bottom: 10,
            child: Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: const Color(0xff5F67EA),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Icon(
                Icons.mic_outlined,
                color: Colors.white,
                size: 25,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
