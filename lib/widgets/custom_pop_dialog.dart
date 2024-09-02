// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class CustomPopDialog extends StatelessWidget {
  bool dismiss;
  Widget child;
  CustomPopDialog({super.key, this.dismiss = false, required this.child});

  @override
  Widget build(BuildContext context) {

    return WillPopScope(
      onWillPop: () async {
        return dismiss;
      },
      child: child,
    );
  }
}
