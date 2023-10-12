import 'package:dcoding/shared/theme.dart';
import 'package:dcoding/ui/widgets/home_latestTransaction.dart';
import 'package:dcoding/ui/widgets/home_sendAgain.dart';
import 'package:dcoding/ui/widgets/home_service.dart';
import 'package:flutter/material.dart';

class home extends StatelessWidget {
  const home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // buat menengahkan tombol plus
      bottomNavigationBar: BottomAppBar(
        color: whitecolor,
        shape: const CircularNotchedRectangle(),
        clipBehavior: Clip.antiAlias,
        notchMargin: 6,
        elevation: 0,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: bluecolor,
          unselectedItemColor: blackcolor,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          elevation: 0,
          backgroundColor: whitecolor,
          selectedLabelStyle: blueTextStyle.copyWith(
            fontSize: 10,
            fontWeight: medium,
          ),
          unselectedLabelStyle: BlactTextStyle.copyWith(
            fontSize: 10,
            fontWeight: medium,
          ),
          items: [
            // item 1
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/ic_overview.png',
                width: 20,
                color: bluecolor,
              ),
              label: 'overview',
            ),

            // item 2
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/ic_history.png',
                width: 20,
              ),
              label: 'history',
            ),

            // item 3
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/ic_statistic.png',
                width: 20,
              ),
              label: 'statistic',
            ),

            // item 4
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/ic_reward.png',
                width: 20,
              ),
              label: 'reward',
            ),
          ],
        ),
      ),

      // plus
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: purplecolor,
        child: Image.asset(
          'assets/ic_plus_circle.png',
          width: 24,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      // padding
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
        children: [
          BuildProfile(context),
          BuildLevel(),
          BuildService(context),
          BuildLatest(),
        ],
      ),
    );
  }

  Widget BuildProfile(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 40,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Howdy,',
                style: greyTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                height: 2,
              ),
              Text(
                'shaynahan',
                style: BlactTextStyle.copyWith(
                  fontSize: 20,
                  fontWeight: SemiBold,
                ),
              ),
            ],
          ),

          // profile pojok
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/profile');
            },
            child: Container(
              width: 60,
              height: 60,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(
                    'assets/img_profile.png',
                  ),
                ),
              ),

              // hiasan profile pojok
              child: Align(
                alignment: Alignment.topRight,
                child: Container(
                  width: 16,
                  height: 16,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: whitecolor,
                  ),
                  child: Center(
                    child: Icon(
                      Icons.check_circle,
                      color: greencolor,
                      size: 14,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget BuildLevel() {
    return Container(
      margin: const EdgeInsets.only(
        top: 20,
      ),
      padding: const EdgeInsets.all(22),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: whitecolor,
      ),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'progress',
                style: BlactTextStyle.copyWith(
                  fontWeight: medium,
                  fontSize: 14,
                ),
              ),
              const Spacer(),
              Text(
                '55%',
                style: greenTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: SemiBold,
                ),
              ),
              Text(
                'of 100%',
                style: BlactTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: SemiBold,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(55),
            child: LinearProgressIndicator(
              value: 0.55,
              minHeight: 5,
              valueColor: AlwaysStoppedAnimation(greencolor),
              backgroundColor: lightbackgroundcolor,
            ),
          )
        ],
      ),
    );
  }

  Widget BuildService(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 30,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Do Something',
            style: BlactTextStyle.copyWith(
              fontWeight: SemiBold,
              fontSize: 16,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              home_service(
                iconurl: 'assets/booking.png',
                title: 'booking',
                onTap: () {
                  Navigator.pushNamed(context, '/booking');
                },
              ),
              home_service(
                iconurl: 'assets/coment.png',
                title: 'response',
                onTap: () {
                  Navigator.pushNamed(context, '/coment');
                },
              ),
              home_service(
                iconurl: 'assets/location.png',
                title: 'location',
                onTap: () {},
              ),
              home_service(
                iconurl: 'assets/ic_more.png',
                title: 'More',
                onTap: () {},
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget BuildLatest() {
    return Container(
      margin: const EdgeInsets.only(
        top: 30,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Latest Transaction',
            style: BlactTextStyle.copyWith(
              fontWeight: SemiBold,
              fontSize: 16,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(22),
            margin: const EdgeInsets.only(top: 14),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: whitecolor,
            ),
            child: Column(
              children: [
                homeLatestTarns(
                  iconurl: 'assets/sedan.png',
                  title: 'car',
                  time: 'Yesterday',
                  value: '+500.000',
                ),
                homeLatestTarns(
                  iconurl: 'assets/motor.png',
                  title: 'car',
                  time: '10 Desember',
                  value: '+50.000',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
