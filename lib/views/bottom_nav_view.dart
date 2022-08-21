import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wilson_wings_test/themes/theme.dart';
import 'package:wilson_wings_test/views/home_view.dart';

class BottomNavView extends StatelessWidget {
  BottomNavView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 2,
      length: 4,
      child: Scaffold(
        body: HomeView(),
        bottomNavigationBar: Material(
          color: Colors.white,
          child: SizedBox(
            height: 80,
            child: TabBar(
              indicatorColor: AppTheme.primaryColor,
              unselectedLabelColor: Colors.grey,
              labelColor: Colors.black,
              labelPadding: const EdgeInsets.all(10),
              tabs: <Widget>[
                Tab(
                  icon: homeSvg,
                  text: "Home",
                ),
                Tab(
                  icon: teamSvg,
                  text: "Team",
                ),
                Tab(
                  icon: reportSvg,
                  text: "Reports",
                ),
                Tab(
                  icon: attendance,
                  text: "Attendance",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget reportSvg =
      SvgPicture.asset("assets/svg/Reports.svg", semanticsLabel: 'Acme Logo');
  Widget homeSvg =
      SvgPicture.asset("assets/svg/home.svg", semanticsLabel: 'Acme Logo');
  Widget teamSvg =
      SvgPicture.asset("assets/svg/team.svg", semanticsLabel: 'Acme Logo');
  Widget attendance = SvgPicture.asset("assets/svg/attendance.svg",
      semanticsLabel: 'Acme Logo');
}
