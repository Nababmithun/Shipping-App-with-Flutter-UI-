import 'package:flutter/material.dart';
import 'package:interport/features/home/view/widgets/info_card_widget.dart';
import 'package:interport/features/home/view/widgets/pie_chart_widget.dart';
import 'package:interport/features/profile/view/profile_page.dart';
import 'package:interport/res/resources/colors.dart';
import 'package:interport/res/resources/string_resources.dart';
import 'package:interport/res/widgets/common_text_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var spaceHeightMax = const SizedBox(
      height: 10,
    );
    var spaceHeightMin = const SizedBox(
      height: 5,
    );
    var appBarWidget = AppBar(
      backgroundColor: AppTheme.appBarColor,
      elevation: 0,
      automaticallyImplyLeading: false,
      centerTitle: true,
      title: CommonTextWidget(
        text: StringResources.dashboardText,
        fontSize: 18,
        fontWeight: FontWeight.w700,
      ),
      leading: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ProfilePage(),
              ),
            );
          },
          child: Container(
            height: 36,
            width: 36,
            decoration: BoxDecoration(
              color: AppTheme.greyColor,
              borderRadius: BorderRadius.circular(100),
            ),
            child: const Icon(
              Icons.person_outline_rounded,
              color: Colors.white,
            ),
          ),
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 15.0),
          child: Image.asset(
            "assets/notification.png",
            height: 24,
            width: 24,
          ),
        ),
      ],
    );
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appBarWidget,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                InfoCardWidget(
                  title: "New Assigned Survey",
                  isGreyColor: false,
                  count: "5",
                ),
                InfoCardWidget(
                  title: "Survey Done",
                  count: "10",
                ),
              ],
            ),
            spaceHeightMax,
            spaceHeightMin,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                InfoCardWidget(
                  title: "Reports",
                  count: "50",
                ),
                InfoCardWidget(
                  title: "Upcoming",
                  count: "0",
                ),
              ],
            ),
            spaceHeightMax,
            spaceHeightMin,
            const PieChartWidget(),
          ],
        ),
      ),
    );
  }
}
