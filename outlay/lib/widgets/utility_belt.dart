import 'package:flutter/material.dart';
import 'package:outlay/outlay_theme.dart';

class UtilityBelt extends StatefulWidget {
  const UtilityBelt({super.key, required this.toggleNewOutlay, required this.isNewOutlayVisible});

  final bool isNewOutlayVisible;
  final void Function() toggleNewOutlay;

  @override
  State<UtilityBelt> createState() => _UtilityBeltState();
}

class _UtilityBeltState extends State<UtilityBelt> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      margin: const EdgeInsets.fromLTRB(10, 0, 10, 20),
      decoration: BoxDecoration(
        color: OutlayTheme.darkBackgroundColor,
        borderRadius: BorderRadius.circular(25),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
      child: Row(
        children: [
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '//TOTAL',
                style: OutlayTheme.secondaryHeader,
              ),
              Text(
                ' - ₹ 12304.32',
                style: OutlayTheme.utilityDebitFont,
              ),
              Text(
                ' + ₹ 150.32',
                style: OutlayTheme.utilityCreditFont,
              )
            ],
          ),
          const Spacer(),
          IconButton(
            splashRadius: 1,
            onPressed: widget.toggleNewOutlay,
            icon: Icon(widget.isNewOutlayVisible ? Icons.close : Icons.add),
            color: OutlayTheme.secondaryColor,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.calendar_view_day),
            color: OutlayTheme.secondaryColor,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.calendar_month),
            color: OutlayTheme.secondaryColor,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.circle),
            color: OutlayTheme.secondaryColor,
          ),
        ],
      ),
    );
  }
}