import 'package:designcode/components/serachfield_widget.dart';
import 'package:designcode/components/sidebar_button.dart';
import 'package:designcode/screens/profile_screen.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class HomeScreenNavBar extends StatelessWidget {
  const HomeScreenNavBar({super.key, required this.triggerAnimation});

  final VoidCallback triggerAnimation;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SidebarButton(
            triggerAnimation: triggerAnimation,
          ),
          const SearchFieldWidget(),
          const Icon(
            Icons.notifications,
            color: kPrimaryLabelColor,
          ),
          const SizedBox(
            width: 16.0,
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const ProfileScreen(),
                ),
              );
            },
            child: const CircleAvatar(
              radius: 18.0,
              backgroundImage:
                  AssetImage('asset/images/logo-circle-linkedin.jpg'),
            ),
          ),
        ],
      ),
    );
  }
}
