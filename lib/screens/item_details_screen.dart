import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:centre_source/constants/custom_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemDetailsScreen extends StatefulWidget {
  const ItemDetailsScreen({Key? key}) : super(key: key);

  @override
  _ItemDetailsScreenState createState() => _ItemDetailsScreenState();
}

class _ItemDetailsScreenState extends State<ItemDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: primaryColor,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: white,
          body: Stack(
            children: [
              backgroundStyle(),
              Column(
                children: [
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 25,
                      ),
                      Image.asset(
                        "assets/Icons/camera.png",
                        color: white,
                        height: 25,
                        width: 25,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      const Text(
                        "Point your camera at a furniture",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w200,
                            color: white),
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      Container(
                        width: 35.0,
                        height: 35.0,
                        decoration: const BoxDecoration(
                          color: blackCircle,
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: Container(
                            width: 10.0,
                            height: 10.0,
                            decoration: const BoxDecoration(
                              color: white,
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30,),
                  Container(
                    padding: const EdgeInsets.all(5),
                    height: 50,
                    width: 250,
                    decoration:  BoxDecoration(
                      color: blackCircle.withOpacity(0.60),
                      borderRadius: const BorderRadius.all(Radius.circular(30)),
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: 40.0,
                          height: 40.0,
                          decoration: const BoxDecoration(
                            color: white,
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(
                            Icons.close,
                            size: 20,
                          ),
                        ),
                        const Spacer(),
                        const Text(
                          "Elementum Chair: 88.47%",
                          style: TextStyle(color: white, fontSize: 13),
                        ),
                        const Spacer(),
                      ],
                    ),
                  ),
                  const SizedBox(height: 50,),
                  Row(
                    children: [
                      const Spacer(),
                      Container(
                        width: 30.0,
                        height: 30.0,
                        decoration: const BoxDecoration(
                          color: white,
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.add,
                          size: 25,
                        ),
                      ),
                      const SizedBox(
                        width: 45,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 45,
                      ),
                      Container(
                        width: 30.0,
                        height: 30.0,
                        decoration: const BoxDecoration(
                          color: white,
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.add,
                          size: 25,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(32),
                    child: Container(
                      height: 107,
                      padding: const EdgeInsets.all(10),
                      decoration:  BoxDecoration(
                        color: blackCircle.withOpacity(0.57),
                        borderRadius: const BorderRadius.all(Radius.circular(30)),
                      ),
                      child: Row(children: [

                        Image.asset("assets/Images/sofa.png"),
                        const Spacer(),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                          const Spacer(),
                          const Text(
                            "Elementum Chair",
                            style: TextStyle(color: white, fontSize: 16),
                          ),
                          const Spacer(),
                          Row(

                            children: [


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
                                        text: "4.6",
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: white,
                                            fontWeight: FontWeight.bold)),
                                  ],
                                ),
                              ),
                              const SizedBox(width: 20,),
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
                                            color: white,
                                            fontWeight: FontWeight.bold)),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const Spacer(),
                        ],),
                        const Spacer(),
                        Container(
                          width: 50.0,
                          height: 50.0,
                          decoration: const BoxDecoration(
                            color: white,
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(
                            Icons.arrow_forward_ios_sharp,
                            size: 15,
                          ),
                        ),
                        const Spacer(),
                      ],),
                    ),
                  ),
                 const SizedBox(height: 100,),
                ],
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

  Widget backgroundStyle() {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.85,
      child: Center(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                primaryColor,
                colorBlack,
                Colors.transparent,
                colorBlack,
                primaryColor
              ],
            ),
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(46),
                bottomRight: Radius.circular(46)),
            image: DecorationImage(
              image: ExactAssetImage('assets/Images/unsplash.jpg'),
              fit: BoxFit.fitWidth,
              filterQuality: FilterQuality.high,
              // colorFilter: ColorFilter.mode(primaryColor, BlendMode.srcOver)
            ),
          ),
          foregroundDecoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                primaryColor,
                colorBlack,
                Colors.transparent,
                colorBlack,
                primaryColor
              ],
            ),
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(46),
                bottomRight: Radius.circular(46)),
          ),
        ),
      ),
    );
  }
}
