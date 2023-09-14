import 'package:flutter/material.dart';

import 'package:outlay/model/outlay.dart';

class OutlayCard extends StatelessWidget {
  const OutlayCard({super.key, required this.outlay});

  final Outlay outlay;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(outlay.title),
              Text('//${outlay.outlayCategory.name}'),
            ],
          ),
          const Spacer(),
          Text(
            '${outlay.outlayType == AmountType.debit ? '-' : '+'} ₹ ${outlay.outlayAmount.toStringAsFixed(2)}',
          ),
        ],
      ),
    );
  }
}
