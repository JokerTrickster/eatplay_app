import 'package:flutter/material.dart';

class CommonWidgets {
  static Widget loadingIndicator() {
    return const Center(child: CircularProgressIndicator());
  }

  static Widget errorWidget(String message) {
    return Center(child: Text(message));
  }
}
