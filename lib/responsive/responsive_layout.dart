import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileScreen;
  final Widget tabletScreen;
  final Widget dekstopScreen;
  const ResponsiveLayout(
      {super.key,
      required this.mobileScreen,
      required this.tabletScreen,
      required this.dekstopScreen});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      if (constraint.maxWidth < 500) {
        return mobileScreen;
      } else if (constraint.maxWidth < 1100) {
        return tabletScreen;
      } else {
        return dekstopScreen;
      }
    });
  }
}
