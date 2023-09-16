import 'package:flutter/material.dart';
import 'package:outlay/outlay_theme.dart';

class OutlayMonthCard extends StatelessWidget {
  const OutlayMonthCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 10,
      width: 10,
      decoration: BoxDecoration(
        color: OutlayTheme.darkBackgroundColor,
        borderRadius: BorderRadius.circular(100),
      ),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '//2',
            style: OutlayTheme.monthlyCard,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '+2',
                style: OutlayTheme.utilityCreditFont,
              ),
              Text(
                '-6',
                style: OutlayTheme.utilityDebitFont,
              )
            ],
          )
        ],
      ),
    );
  }
}
