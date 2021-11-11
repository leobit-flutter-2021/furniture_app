import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lab4/explore_page.dart';
import 'package:lab4/my_bag_page.dart';

class NavigationBar extends StatelessWidget {
  const NavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 90,
      padding: const EdgeInsets.only(bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Material(
            child: Column(
              children: [
                IconButton(
                  icon: const Icon(Icons.home_outlined),
                  onPressed: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return const ExplorePage();
                      }),
                    )
                  },
                ),
                const Text("Home")
              ],
            ),
          ),
          Material(
            child: Column(
              children: [
                IconButton(
                  icon: const Icon(Icons.shopping_bag),
                  onPressed: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return MyBag();
                      }),
                    )
                  },
                ),
                const Text("My Bag"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
