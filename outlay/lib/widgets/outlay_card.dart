import 'package:flutter/material.dart';

import 'package:outlay/model/outlay.dart';
import 'package:outlay/outlay_theme.dart';

class OutlayCard extends StatelessWidget {
  const OutlayCard({super.key, required this.outlay});

  final Outlay outlay;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                outlay.title,
                style: OutlayTheme.titleFont,
              ),
              Container(
                decoration: BoxDecoration(
                  color: OutlayTheme.darkBackgroundColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                child: Text(
                  '//${outlay.outlayCategory.name.toUpperCase()}',
                  style: OutlayTheme.categoryFont,
                ),
              ),
            ],
          ),
          const Spacer(),
          Text(
            '${outlay.outlayType == AmountType.debit ? '-' : '+'} ₹ ${outlay.outlayAmount.toStringAsFixed(2)}',
            style: outlay.outlayType == AmountType.debit
                ? OutlayTheme.debitFont
                : OutlayTheme.creditFont,
          ),
        ],
      ),
    );
  }
}
