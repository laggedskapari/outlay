import 'package:flutter/material.dart';
import 'package:outlay/widgets/outlay_month_card.dart';

class MonthView extends StatelessWidget {
  const MonthView({ super.key });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(30),
      child: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 5,
          childAspectRatio: 1,
          crossAxisSpacing: 8,
          mainAxisSpacing: 20,
        ),
        children: const [
          OutlayMonthCard(),
          OutlayMonthCard(),
          OutlayMonthCard(),
          OutlayMonthCard(),
          OutlayMonthCard(),
          OutlayMonthCard(),
          OutlayMonthCard(),
          OutlayMonthCard(),
          OutlayMonthCard(),
          OutlayMonthCard(),
          OutlayMonthCard(),
          OutlayMonthCard(),
          OutlayMonthCard(),
          OutlayMonthCard(),
          OutlayMonthCard(),
          OutlayMonthCard(),
          OutlayMonthCard(),
          OutlayMonthCard(),
          OutlayMonthCard(),
          OutlayMonthCard(),
          OutlayMonthCard(),
          OutlayMonthCard(),
          OutlayMonthCard(),
          OutlayMonthCard(),
          OutlayMonthCard(),
          OutlayMonthCard(),
          OutlayMonthCard(),
          OutlayMonthCard(),
          OutlayMonthCard(),
          OutlayMonthCard(),
          OutlayMonthCard(),
        ],
      ),
    );
  }
}
