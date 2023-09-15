import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:outlay/outlay_theme.dart';
import 'package:outlay/providers/outlays_provider.dart';
import 'package:outlay/widgets/outlay_app_bar.dart';
import 'package:outlay/widgets/day_view.dart';
import 'package:outlay/widgets/utility_belt.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({ super.key });

  @override
  ConsumerState<HomeScreen> createState() {
    return _HomeScreenState();
  }
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final outlays = ref.watch(outlayProvider);
    return Scaffold(
      backgroundColor: OutlayTheme.backgroundColor,
      appBar: const OutlayAppBar(),
      body: Column(
        children: [
          Expanded(
            child: DayView(outlays: outlays),
          )
        ],
      ),
      bottomNavigationBar: const UtilityBelt(),
    );
  }
}
