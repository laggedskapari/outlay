import 'package:flutter/material.dart';

class OutlayAppBar extends StatelessWidget implements PreferredSizeWidget {
  const OutlayAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: const SafeArea(
        child: SizedBox(
          height: 60,
          child: Column(
            children: [
              Text('Outlays'),
              Text('//a minimalistic expense tracker.'),
            ],
          ),
        ),
      ),
    );
  }
}
