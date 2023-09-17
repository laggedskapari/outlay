import 'package:flutter/material.dart';

import 'package:outlay/model/outlay.dart';
import 'package:outlay/outlay_theme.dart';
import 'package:outlay/widgets/outlay_card.dart';

class DayView extends StatelessWidget {
  const DayView({super.key, required this.outlays});

  final List<Outlay> outlays;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.fromLTRB(0, 0, 0, 10),
            child: const Text(
              '//Today',
              style: OutlayTheme.dateTimeHeader,
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) => OutlayCard(
                outlay: outlays[index],
              ),
              itemCount: outlays.length,
            ),
          ),
        ],
      ),
    );
  }
}
