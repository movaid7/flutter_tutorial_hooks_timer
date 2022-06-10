import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

int useInfiniteTimer(BuildContext context) {
  return use(_InfiniteTimer());
}

class _InfiniteTimer extends Hook<int> {
  static final _InfiniteTimer _instance = _InfiniteTimer();

  @override
  __InfiniteTimerState createState() => __InfiniteTimerState();
}

class __InfiniteTimerState extends HookState<int, _InfiniteTimer> {
  late Timer _timer;
  int _number = 0;

  @override
  void initHook() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        _number = _timer.tick;
      });
    });
    super.initHook();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  int build(BuildContext context) {
    return _number;
  }
}
