import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';

extension RefLifeCicle<T> on AutoDisposeRef<T> {
  void disposeDelay(Duration duration) {
    final link = keepAlive();
    Timer? timer;

    onCancel(() {
      timer?.cancel();
      timer = Timer(duration, link.close);
    });

    onDispose(
      () {
        timer?.cancel();
      },
    );

    onResume(() {
      timer?.cancel();
    });
  }
}
