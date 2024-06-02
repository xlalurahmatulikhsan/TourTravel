import 'package:flutter/material.dart';
import 'package:slicing/shared/theme/theme.dart';

class NavigationMenu {
  NavigationMenu({
    required this.label,
    required this.icon,
    this.count = 0,
  });
  final String label;
  final IconData icon;
  final int count;
}

class QNavigation extends StatefulWidget {
  const QNavigation({
    required this.pages,
    required this.menus,
    super.key,
    this.initialIndex = 0,
  });
  final List<Widget> pages;
  final List<NavigationMenu> menus;
  final int initialIndex;
  @override
  State<QNavigation> createState() => QNavigationState();
}

class QNavigationState extends State<QNavigation> {
  static late QNavigationState instance;
  int selectedIndex = 0;

  updateIndex(int newIndex) {
    selectedIndex = newIndex;
    setState(() {});
    print(selectedIndex);
  }

  @override
  void initState() {
    super.initState();
    instance = this;
    selectedIndex = widget.initialIndex;
  }

  @override
  Widget build(BuildContext context) {
    instance = this;
    double bottomBarHeight = 56;
    // final pageCount = widget.pages.length;

    return DefaultTabController(
      length: widget.pages.length,
      initialIndex: selectedIndex,
      child: Scaffold(
        body: IndexedStack(
          index: selectedIndex,
          children: widget.pages,
        ),
        bottomNavigationBar: SizedBox(
          height: bottomBarHeight,
          child: BottomAppBar(
            padding: const EdgeInsets.all(0),
            shape: const CircularNotchedRectangle(),
            child: LayoutBuilder(
              builder: (context, constraints) {
                // final mw = constraints.maxWidth - 40;
                return SizedBox(
                  child: Stack(
                    children: [
                      // AnimatedPositioned(
                      //   duration: const Duration(milliseconds: 200),
                      //   left: 20 + ((mw / pageCount) * selectedIndex),
                      //   bottom: 0,
                      //   child: Container(
                      //     width: mw / pageCount,
                      //     height: 4,
                      //     decoration: const BoxDecoration(
                      //       color: secondColor,
                      //       borderRadius: BorderRadius.only(
                      //         topLeft: Radius.circular(20),
                      //         topRight: Radius.circular(20),
                      //       ),
                      //     ),
                      //     child: const Row(
                      //       mainAxisAlignment: MainAxisAlignment.center,
                      //     ),
                      //   ),
                      // ),
                      Positioned(
                        left: 20,
                        right: 20,
                        top: 0,
                        bottom: 0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: List.generate(widget.menus.length, (index) {
                            final item = widget.menus[index];
                            final selected = index == selectedIndex;
                            if ((widget.menus.length / 2).floor() == index) {}
                            return Expanded(
                              child: InkWell(
                                onTap: () => updateIndex(index),
                                child: SizedBox(
                                  height: bottomBarHeight,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      AnimatedContainer(
                                        duration:
                                            const Duration(milliseconds: 200),
                                        margin: EdgeInsets.only(
                                          bottom: selected ? 6.0 : 0,
                                        ),
                                        child: AnimatedScale(
                                          duration:
                                              const Duration(milliseconds: 200),
                                          scale: selected ? 1.2 : 1.0,
                                          child: Column(
                                            children: [
                                              Icon(
                                                item.icon,
                                                size: 20,
                                                color: selected
                                                    ? secondColor
                                                    : greyColor,
                                              ),
                                              Text(item.label,
                                                  style:
                                                      whiteTextStyle.copyWith(
                                                          fontSize: 8,
                                                          color: selected
                                                              ? secondColor
                                                              : greyColor))
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          }),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
