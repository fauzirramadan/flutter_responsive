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
  ScrollController _scrollController = ScrollController();

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
                  aspectRatio: 3,
                  child: SizedBox(
                    height: 200,
                    width: double.infinity,
                    child: Scrollbar(
                      thumbVisibility: true,
                      controller: _scrollController,
                      child: GridView.builder(
                        controller: _scrollController,
                        scrollDirection: Axis.horizontal,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 1),
                        itemCount: 6,
                        itemBuilder: (context, index) {
                          return const MyBox();
                        },
                      ),
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
