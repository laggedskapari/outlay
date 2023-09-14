import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:outlay/model/outlay.dart';
import 'package:outlay/data/sample_outlays.dart';

class OutlaysNotifier extends StateNotifier<List<Outlay>> {
  OutlaysNotifier() : super(sampleOutlays);

  bool addRemoveOutlay(Outlay outlay) {
    final isOutlay = state.contains(outlay);

    if (isOutlay) {
      state = state.where((o) => o.id != outlay.id).toList();
      return false;
    } else {
      state = [...state, outlay];
      return true;
    }
  }
}

final outlayProvider = StateNotifierProvider<OutlaysNotifier, List<Outlay>>(
  (ref) => OutlaysNotifier(),
);
