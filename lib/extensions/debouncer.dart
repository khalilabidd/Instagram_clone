import 'package:flutter/material.dart';
import 'dart:async';

class Debouncer {
  final int milliseconds;
  VoidCallback? action;
  late Timer _timer;

  Debouncer({required this.milliseconds});

  run(VoidCallback action) {
    _timer.cancel();

    _timer = Timer(Duration(milliseconds: milliseconds), action);
  }
}

final debouncer = Debouncer(milliseconds: 500);

//onChanged: (string) {debouncer.run(() {action;});
