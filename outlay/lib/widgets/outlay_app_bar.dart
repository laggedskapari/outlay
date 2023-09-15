import 'package:flutter/material.dart';
import 'package:outlay/outlay_theme.dart';

class OutlayAppBar extends StatelessWidget implements PreferredSizeWidget {
  const OutlayAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      child: const SafeArea(
        child: SizedBox(
          height: 100,
          child: Column(
            children: [
              Text(
                'Outlays',
                style: OutlayTheme.headerFont,
              ),
              Text(
                '//a minimalistic expense tracker.',
                style: OutlayTheme.secondaryHeader,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
