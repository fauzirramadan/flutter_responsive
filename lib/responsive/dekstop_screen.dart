import 'package:flutter/material.dart';
import 'package:flutter_responsive/constant.dart';
import 'package:flutter_responsive/utils/mytile.dart';

import '../utils/mybox.dart';

class DekstopScreen extends StatefulWidget {
  const DekstopScreen({super.key});

  @override
  State<DekstopScreen> createState() => _DekstopScreenState();
}

class _DekstopScreenState extends State<DekstopScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: defaultBackgroundColor,
      appBar: myAppBar,
      body: Row(
        children: [
          myDrawer,
          Expanded(
            child: Column(
              children: [
                AspectRatio(
                  aspectRatio: 4,
                  child: SizedBox(
                    width: double.infinity,
                    child: GridView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 4),
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return const MyBox();
                      },
                    ),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                      itemCount: 7,
                      itemBuilder: (context, index) {
                        return const MyTile();
                      }),
                ),
              ],
            ),
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2),
              itemCount: 10,
              itemBuilder: (context, index) {
                return const MyBox();
              },
            ),
          )
        ],
      ),
    );
  }
}
