import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  Responsive({required this.mobile, this.tablet, required this.desktop});

  final Widget mobile, desktop;
  late final Widget? tablet;

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 850;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < 1100 &&
      MediaQuery.of(context).size.width >= 850;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1100;

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;

    if (_size.width >= 1100) {
      return desktop;
    } else if (_size.width >= 850 && tablet != null) {
      return desktop;
    } else {
      return mobile;
    }
  }
}
