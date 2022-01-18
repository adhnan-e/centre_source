import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:centre_source/constants/custom_colors.dart';
import 'package:centre_source/constants/functions.dart';
import 'package:centre_source/screens/item_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: white,
      child: SafeArea(

        maintainBottomViewPadding: true,
        child: Scaffold(
          backgroundColor: white,
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(25),
                child: Row(
                  children: [
                    Text(
                      "Top Rated",
                      style: GoogleFonts.inter(
                          fontSize: 30, fontWeight: FontWeight.w900),
                    ),
                    const Spacer(),
                    Image.asset(
                      "assets/Icons/filter.png",
                      width: 30,
                      height: 20,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 55,
                child: ListView(
                  // physics: const BouncingScrollPhysics(),
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 25, vertical: 10),
                        decoration: BoxDecoration(
                            color: primaryColor,
                            border: Border.all(color: black60),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(15)),
                        ),
                        child: Row(
                          children: [
                            Image.asset(
                              "assets/Icons/armchair.png",
                              color: white,
                              width: 20,
                              height: 20,
                            ),
                            const SizedBox(
                              width: 13,
                            ),
                            const Text(
                              "Armchair",
                              style: TextStyle(fontSize: 14, color: white),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        decoration: BoxDecoration(
                            color: backgroundWhite,
                            border: Border.all(color: white),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(15))),
                        child: Row(
                          children: [
                            Image.asset(
                              "assets/Icons/bed.png",
                              width: 25,
                              height: 25,
                            ),
                            const SizedBox(
                              width: 13,
                            ),
                            const Text("Bed")
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        decoration: BoxDecoration(
                            color: backgroundWhite,
                            border: Border.all(color: white),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(15))),
                        child: Row(
                          children: [
                            Image.asset(
                              "assets/Icons/floor-lamp.png",
                              width: 25,
                              height: 25,
                            ),
                            const SizedBox(
                              width: 13,
                            ),
                            const Text("Lamp")
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 25,
                ),
                child: Row(
                  children: const [
                    Text(
                      "147 products",
                      style: TextStyle(
                          fontSize: 14,
                          color: black60,
                          fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Text(
                      "Most popular",
                      style: TextStyle(
                          fontSize: 14,
                          color: textBlack,
                          fontWeight: FontWeight.w700),
                    ),
                    Icon(Icons.keyboard_arrow_down)
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: MasonryGridView.count(
                  physics: const BouncingScrollPhysics(),
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  shrinkWrap: true,
                  crossAxisCount: 2,
                  mainAxisSpacing: 15,
                  crossAxisSpacing: 15,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        callNext(const ItemDetailsScreen(), context);
                      },
                      child: Padding(
                        padding: index == 1
                            ? const EdgeInsets.only(top: 40)
                            : const EdgeInsets.only(top: 0),
                        child: Container(
                          height: 240,
                          padding: const EdgeInsets.all(13),
                          decoration: BoxDecoration(
                              color: backgroundWhite,
                              border: Border.all(color: white),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(25))),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Spacer(),
                              Image.asset(
                                "assets/Images/chair.png",
                                fit: BoxFit.fitWidth,
                              ),
                              const Spacer(),
                              const Text(
                                "Tortor Chair",
                                style: TextStyle(color: textBlack, fontSize: 13),
                              ),
                              const Spacer(),
                              Row(
                                children: [
                                  RichText(
                                    text: const TextSpan(
                                      children: [
                                        TextSpan(
                                            text: "\$",
                                            style: TextStyle(
                                                color: dollarYellow,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15)),
                                        TextSpan(
                                            text: "232.00",
                                            style: TextStyle(
                                                fontSize: 15,
                                                color: textBlack,
                                                fontWeight: FontWeight.bold)),
                                      ],
                                    ),
                                  ),
                                  const Spacer(),
                                  RichText(
                                    text: const TextSpan(
                                      children: [
                                        WidgetSpan(
                                          child: Icon(
                                            Icons.star,
                                            size: 15,
                                            color: dollarYellow,
                                          ),
                                        ),
                                        TextSpan(
                                            text: "4.8",
                                            style: TextStyle(
                                                fontSize: 15,
                                                color: textBlack,
                                                fontWeight: FontWeight.bold)),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              const Spacer(),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            backgroundColor: primaryColor,
            child: const Icon(Icons.shopping_bag_outlined),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          bottomNavigationBar: AnimatedBottomNavigationBar(
            elevation: 15,

            icons: const [
              Icons.home_filled,
              Icons.search,
              Icons.settings,
              Icons.person_outlined,
            ],
            inactiveColor: lightGray,
            activeIndex: 0,
            gapLocation: GapLocation.center,
            notchSmoothness: NotchSmoothness.sharpEdge,

            leftCornerRadius: 0,
            rightCornerRadius: 0,
            onTap: (int) {},
            //other params
          ),
        ),
      ),
    );
  }
}
