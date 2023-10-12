import 'package:dcoding/shared/theme.dart';
import 'package:dcoding/ui/pages/signIn_page.dart';
import 'package:dcoding/ui/pages/signup_page.dart';
import 'package:dcoding/ui/widgets/button.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class onboarding extends StatefulWidget {
  const onboarding({Key? key}) : super(key: key);

  @override
  State<onboarding> createState() => _onboardingState();
}

class _onboardingState extends State<onboarding> {
  int currentIndex = 0;
  CarouselController carouselController = CarouselController();

  List<String> titles = [
    'best service\nfor customers',
    'professional\nstaff',
    'Start Together',
  ];

  List<String> subtitle = [
    'Our workshop repairs\nvehicles with professional\nservice',
    'Our workshop employs\ntrained and selected\nemployees',
    'We will help you\nwith our services and services',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CarouselSlider(
                  items: [
                    Image.asset(
                      'assets/ob1.png',
                      height: 331,
                    ),
                    Image.asset(
                      'assets/ob2.png',
                      height: 331,
                    ),
                    Image.asset(
                      'assets/ob3.png',
                      height: 331,
                    ),
                  ],
                  options: CarouselOptions(
                    height: 331,
                    viewportFraction: 1,
                    enableInfiniteScroll: false,
                    // controller jika di klik gambar berubah (1)
                    onPageChanged: (index, reason) {
                      setState(() {
                        currentIndex = index;
                      });
                    },
                  ),
                  carouselController: carouselController,
                ),

                // box di bawah gambar
                const SizedBox(
                  height: 80,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 24,
                  ),
                  padding: const EdgeInsets.symmetric(
                    vertical: 24,
                    horizontal: 22,
                  ),
                  decoration: BoxDecoration(
                    color: whitecolor,
                    borderRadius: BorderRadius.circular(20),
                  ),

                  // isi kotak
                  child: Column(children: [
                    Text(
                      titles[currentIndex],
                      style: BlactTextStyle.copyWith(
                        fontSize: 20,
                        fontWeight: SemiBold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 26,
                    ),
                    Text(
                      subtitle[currentIndex],
                      style: greyTextStyle.copyWith(
                        fontSize: 16,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: currentIndex == 2 ? 38 : 50,
                    ),

                    // bawah tulisan shape slide bulat
                    currentIndex == 2
                        ? Column(
                            children: [
                              CustomFilletButton(
                                title: 'get started',
                                onpressed: () {
                                  Navigator.pushNamed(context, '/signup');
                                },
                              ),

                              SizedBox(
                                height: 30,
                              ),

                              // sign in
                              SizedBox(
                                width: double.infinity,
                                height: 24,
                                child: TextButton(
                                  onPressed: () {
                                    Navigator.pushNamed(context, '/signin');
                                  },
                                  style: TextButton.styleFrom(
                                      padding: EdgeInsets.zero),
                                  child: Text(
                                    'Sign In',
                                    style: greyTextStyle.copyWith(
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )
                        : Row(
                            children: [
                              Container(
                                width: 12,
                                height: 12,
                                margin: const EdgeInsets.only(
                                  right: 10,
                                ),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: currentIndex == 0
                                      ? bluecolor
                                      : lightbackgroundcolor,
                                ),
                              ),
                              Container(
                                width: 12,
                                height: 12,
                                margin: const EdgeInsets.only(
                                  right: 10,
                                ),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: currentIndex == 1
                                      ? bluecolor
                                      : lightbackgroundcolor,
                                ),
                              ),
                              Container(
                                width: 12,
                                height: 12,
                                margin: const EdgeInsets.only(
                                  right: 10,
                                ),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: currentIndex == 2
                                      ? bluecolor
                                      : lightbackgroundcolor,
                                ),
                              ),

                              // button
                              const Spacer(),
                              CustomFilletButton(
                                width: 120,
                                title: 'continue',
                                onpressed: () {
                                  carouselController.nextPage();
                                },
                              ),
                            ],
                          ),
                  ]),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
