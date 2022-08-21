import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:wilson_wings_test/themes/theme.dart';
import 'package:wilson_wings_test/utils/utils.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  late List<ExpenseData> _chartData;

  @override
  void initState() {
    super.initState();
    _chartData = getExpenseData();
  }

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 6),
          child: CircleAvatar(
            backgroundColor: Colors.transparent,
            backgroundImage: AssetImage("assets/images/Image-section.png"),
          ),
        ),
        title: Column(
          children: [
            Text(
              "SayeedAfzal",
              style: GoogleFonts.notoSans(
                color: Colors.black,
                fontSize: 14,
              ),
            ),
            Text(
              "State Head",
              style: GoogleFonts.notoSans(
                color: Colors.grey,
                fontSize: 14,
              ),
            )
          ],
        ),
        actions: [
          IconButton(
            padding: EdgeInsets.zero,
            onPressed: null,
            icon: Image.asset(
              "assets/images/Group 1.png",
            ),
            iconSize: 100,
          )
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(14),
                height: Utils.getScreenHeightByPercentage(10),
                width: Utils.getScreenWidthByPercentage(100),
                color: AppTheme.secondaryDark,
                child: Center(
                  child: _searchBarWidget(
                    controller: searchController,
                    hintText: "Search report by name, pincode, ID",
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Karnataka Reports",
                      style: GoogleFonts.notoSans(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      height: Utils.getScreenHeightByPercentage(1),
                    ),
                    const Divider(
                      thickness: 1,
                      color: AppTheme.lightGreyShade,
                    ),
                    SizedBox(
                      height: Utils.getScreenHeightByPercentage(1),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Onboarding",
                          style: GoogleFonts.notoSans(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xff323139)),
                        ),
                        Container(
                          height: 32,
                          width: 92,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: AppTheme.secondaryColor,
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "8 Mar",
                                style: GoogleFonts.notoSans(
                                  color: AppTheme.secondaryColor,
                                ),
                              ),
                              Container(
                                height: 19,
                                width: 19,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: AppTheme.secondaryColor,
                                  ),
                                  shape: BoxShape.circle,
                                ),
                                child: const Center(
                                  child: Icon(
                                    Icons.expand_more,
                                    size: 17,
                                    color: AppTheme.secondaryColor,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: Utils.getScreenHeightByPercentage(2),
                    ),
                    _customContainer(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Users",
                                style: GoogleFonts.notoSans(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: const Color(0xff323139),
                                ),
                              ),
                              Text(
                                "Achived/Traget",
                                style: GoogleFonts.notoSans(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: const Color(0xff323139)),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: Utils.getScreenHeightByPercentage(2),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Master Distributor",
                                style: GoogleFonts.notoSans(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: const Color(0xff323139),
                                ),
                              ),
                              Text(
                                "20/50",
                                style: GoogleFonts.notoSans(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: const Color(0xff323139)),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: Utils.getScreenHeightByPercentage(2),
                          ),
                          SliderTheme(
                            data: SliderTheme.of(context).copyWith(
                              overlayShape: SliderComponentShape.noOverlay,
                              trackHeight: 4,
                              thumbColor: Colors.transparent,
                              thumbShape: const RoundSliderThumbShape(
                                enabledThumbRadius: 0.0,
                              ),
                            ),
                            child: Slider(
                              value: 40,
                              max: 100,
                              min: 0,
                              activeColor: AppTheme.primaryColor,
                              inactiveColor: const Color(0xffE4D8EF),
                              onChanged: (double value) {},
                            ),
                          ),
                          SizedBox(
                            height: Utils.getScreenHeightByPercentage(5),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Master Distributor",
                                style: GoogleFonts.notoSans(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: const Color(0xff323139),
                                ),
                              ),
                              Text(
                                "20/50",
                                style: GoogleFonts.notoSans(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: const Color(0xff323139)),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: Utils.getScreenHeightByPercentage(2),
                          ),
                          SliderTheme(
                            data: SliderTheme.of(context).copyWith(
                              overlayShape: SliderComponentShape.noOverlay,
                              trackHeight: 4,
                              thumbColor: Colors.transparent,
                              thumbShape: const RoundSliderThumbShape(
                                enabledThumbRadius: 0.0,
                              ),
                            ),
                            child: Slider(
                              value: 40,
                              max: 100,
                              min: 0,
                              activeColor: AppTheme.primaryColor,
                              inactiveColor: const Color(0xffE4D8EF),
                              onChanged: (double value) {},
                            ),
                          ),
                          SizedBox(
                            height: Utils.getScreenHeightByPercentage(5),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Master Distributor",
                                style: GoogleFonts.notoSans(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: const Color(0xff323139),
                                ),
                              ),
                              Text(
                                "20/50",
                                style: GoogleFonts.notoSans(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: const Color(0xff323139)),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: Utils.getScreenHeightByPercentage(2),
                          ),
                          SliderTheme(
                            data: SliderTheme.of(context).copyWith(
                              overlayShape: SliderComponentShape.noOverlay,
                              trackHeight: 4,
                              thumbColor: Colors.transparent,
                              thumbShape: const RoundSliderThumbShape(
                                enabledThumbRadius: 0.0,
                              ),
                            ),
                            child: Slider(
                              value: 40,
                              max: 100,
                              min: 0,
                              activeColor: AppTheme.primaryColor,
                              inactiveColor: const Color(0xffE4D8EF),
                              onChanged: (double value) {},
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: Utils.getScreenHeightByPercentage(4),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "LMTD v/s MTD",
                          style: GoogleFonts.notoSans(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xff323139)),
                        ),
                        Container(
                          height: 32,
                          width: 151,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: AppTheme.secondaryColor,
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "8 Mar - 23 Mar",
                                style: GoogleFonts.notoSans(
                                  color: AppTheme.secondaryColor,
                                ),
                              ),
                              Container(
                                height: 19,
                                width: 19,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: AppTheme.secondaryColor,
                                  ),
                                  shape: BoxShape.circle,
                                ),
                                child: const Center(
                                  child: Icon(
                                    Icons.expand_more,
                                    size: 17,
                                    color: AppTheme.secondaryColor,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: Utils.getScreenHeightByPercentage(3),
                    ),
                    _customContainer(
                      child: Column(
                        children: [
                          Expanded(
                            child: SfCartesianChart(
                              series: <ChartSeries>[
                                StackedAreaSeries<ExpenseData, String>(
                                  dataSource: _chartData,
                                  xValueMapper: (ExpenseData exp, _) =>
                                      exp.expenseCategory,
                                  yValueMapper: (ExpenseData exp, _) =>
                                      exp.oneThousand,
                                  name: "first",
                                  markerSettings: const MarkerSettings(
                                    isVisible: true,
                                  ),
                                ),
                                StackedAreaSeries<ExpenseData, String>(
                                  dataSource: _chartData,
                                  xValueMapper: (ExpenseData exp, _) =>
                                      exp.expenseCategory,
                                  yValueMapper: (ExpenseData exp, _) =>
                                      exp.oneThousand,
                                  name: "second",
                                  markerSettings: const MarkerSettings(
                                    isVisible: true,
                                  ),
                                )
                              ],
                              primaryXAxis: CategoryAxis(),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: Utils.getScreenHeightByPercentage(4),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "LMTD v/s MTD",
                          style: GoogleFonts.notoSans(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xff323139)),
                        ),
                        Container(
                          height: 32,
                          width: 151,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: AppTheme.secondaryColor,
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "8 Mar - 23 Mar",
                                style: GoogleFonts.notoSans(
                                  color: AppTheme.secondaryColor,
                                ),
                              ),
                              Container(
                                height: 19,
                                width: 19,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: AppTheme.secondaryColor,
                                  ),
                                  shape: BoxShape.circle,
                                ),
                                child: const Center(
                                  child: Icon(
                                    Icons.expand_more,
                                    size: 17,
                                    color: AppTheme.secondaryColor,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: Utils.getScreenHeightByPercentage(3),
                    ),
                    _customContainer(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "LMTD",
                                style: GoogleFonts.notoSans(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: const Color(0xff323139),
                                ),
                              ),
                              Text(
                                "Products",
                                style: GoogleFonts.notoSans(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: const Color(0xff323139),
                                ),
                              ),
                              Text(
                                "MTD",
                                style: GoogleFonts.notoSans(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: const Color(0xff323139),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: Utils.getScreenHeightByPercentage(2),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "45%",
                                style: GoogleFonts.notoSans(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: const Color(0xff323139),
                                ),
                              ),
                              Text(
                                "DMT",
                                style: GoogleFonts.notoSans(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: const Color(0xff323139),
                                ),
                              ),
                              Text(
                                "55%",
                                style: GoogleFonts.notoSans(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: const Color(0xff323139),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: Utils.getScreenHeightByPercentage(2),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              RotatedBox(
                                quarterTurns: 2,
                                child: SliderTheme(
                                  data: SliderTheme.of(context).copyWith(
                                    overlayShape:
                                        SliderComponentShape.noOverlay,
                                    trackHeight: 4,
                                    thumbColor: Colors.transparent,
                                    thumbShape: const RoundSliderThumbShape(
                                      enabledThumbRadius: 0.0,
                                    ),
                                  ),
                                  child: Slider(
                                    value: 40,
                                    max: 100,
                                    min: 0,
                                    activeColor: AppTheme.primaryColor,
                                    inactiveColor: const Color(0xffE4D8EF),
                                    onChanged: (double value) {},
                                  ),
                                ),
                              ),
                              SliderTheme(
                                data: SliderTheme.of(context).copyWith(
                                  overlayShape: SliderComponentShape.noOverlay,
                                  trackHeight: 4,
                                  thumbColor: Colors.transparent,
                                  thumbShape: const RoundSliderThumbShape(
                                    enabledThumbRadius: 0.0,
                                  ),
                                ),
                                child: Slider(
                                  value: 55,
                                  max: 100,
                                  min: 0,
                                  activeColor: AppTheme.secondaryColor,
                                  inactiveColor: const Color(0xffE4D8EF),
                                  onChanged: (double value) {},
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: Utils.getScreenHeightByPercentage(2),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "15%",
                                style: GoogleFonts.notoSans(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: const Color(0xff323139),
                                ),
                              ),
                              Text(
                                "MATM",
                                style: GoogleFonts.notoSans(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: const Color(0xff323139),
                                ),
                              ),
                              Text(
                                "4%",
                                style: GoogleFonts.notoSans(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: const Color(0xff323139),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: Utils.getScreenHeightByPercentage(2),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              RotatedBox(
                                quarterTurns: 2,
                                child: SliderTheme(
                                  data: SliderTheme.of(context).copyWith(
                                    overlayShape:
                                        SliderComponentShape.noOverlay,
                                    trackHeight: 4,
                                    thumbColor: Colors.transparent,
                                    thumbShape: const RoundSliderThumbShape(
                                      enabledThumbRadius: 0.0,
                                    ),
                                  ),
                                  child: Slider(
                                    value: 40,
                                    max: 100,
                                    min: 0,
                                    activeColor: AppTheme.primaryColor,
                                    inactiveColor: const Color(0xffE4D8EF),
                                    onChanged: (double value) {},
                                  ),
                                ),
                              ),
                              SliderTheme(
                                data: SliderTheme.of(context).copyWith(
                                  overlayShape: SliderComponentShape.noOverlay,
                                  trackHeight: 4,
                                  thumbColor: Colors.transparent,
                                  thumbShape: const RoundSliderThumbShape(
                                    enabledThumbRadius: 0.0,
                                  ),
                                ),
                                child: Slider(
                                  value: 55,
                                  max: 100,
                                  min: 0,
                                  activeColor: AppTheme.secondaryColor,
                                  inactiveColor: const Color(0xffE4D8EF),
                                  onChanged: (double value) {},
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: Utils.getScreenHeightByPercentage(2),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "65%",
                                style: GoogleFonts.notoSans(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: const Color(0xff323139),
                                ),
                              ),
                              Text(
                                "Banking",
                                style: GoogleFonts.notoSans(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: const Color(0xff323139),
                                ),
                              ),
                              Text(
                                "12%",
                                style: GoogleFonts.notoSans(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: const Color(0xff323139),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: Utils.getScreenHeightByPercentage(2),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              RotatedBox(
                                quarterTurns: 2,
                                child: SliderTheme(
                                  data: SliderTheme.of(context).copyWith(
                                    overlayShape:
                                        SliderComponentShape.noOverlay,
                                    trackHeight: 4,
                                    thumbColor: Colors.transparent,
                                    thumbShape: const RoundSliderThumbShape(
                                      enabledThumbRadius: 0.0,
                                    ),
                                  ),
                                  child: Slider(
                                    value: 65,
                                    max: 100,
                                    min: 0,
                                    activeColor: AppTheme.primaryColor,
                                    inactiveColor: const Color(0xffE4D8EF),
                                    onChanged: (double value) {},
                                  ),
                                ),
                              ),
                              SliderTheme(
                                data: SliderTheme.of(context).copyWith(
                                  overlayShape: SliderComponentShape.noOverlay,
                                  trackHeight: 4,
                                  thumbColor: Colors.transparent,
                                  thumbShape: const RoundSliderThumbShape(
                                    enabledThumbRadius: 0.0,
                                  ),
                                ),
                                child: Slider(
                                  value: 12,
                                  max: 100,
                                  min: 0,
                                  activeColor: AppTheme.secondaryColor,
                                  inactiveColor: const Color(0xffE4D8EF),
                                  onChanged: (double value) {},
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: Utils.getScreenHeightByPercentage(2),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "12%",
                                style: GoogleFonts.notoSans(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: const Color(0xff323139),
                                ),
                              ),
                              Text(
                                "BBPS",
                                style: GoogleFonts.notoSans(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: const Color(0xff323139),
                                ),
                              ),
                              Text(
                                "48%",
                                style: GoogleFonts.notoSans(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: const Color(0xff323139),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: Utils.getScreenHeightByPercentage(2),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              RotatedBox(
                                quarterTurns: 2,
                                child: SliderTheme(
                                  data: SliderTheme.of(context).copyWith(
                                    overlayShape:
                                        SliderComponentShape.noOverlay,
                                    trackHeight: 4,
                                    thumbColor: Colors.transparent,
                                    thumbShape: const RoundSliderThumbShape(
                                      enabledThumbRadius: 0.0,
                                    ),
                                  ),
                                  child: Slider(
                                    value: 12,
                                    max: 100,
                                    min: 0,
                                    activeColor: AppTheme.primaryColor,
                                    inactiveColor: const Color(0xffE4D8EF),
                                    onChanged: (double value) {},
                                  ),
                                ),
                              ),
                              SliderTheme(
                                data: SliderTheme.of(context).copyWith(
                                  overlayShape: SliderComponentShape.noOverlay,
                                  trackHeight: 4,
                                  thumbColor: Colors.transparent,
                                  thumbShape: const RoundSliderThumbShape(
                                    enabledThumbRadius: 0.0,
                                  ),
                                ),
                                child: Slider(
                                  value: 48,
                                  max: 100,
                                  min: 0,
                                  activeColor: AppTheme.secondaryColor,
                                  inactiveColor: const Color(0xffE4D8EF),
                                  onChanged: (double value) {},
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  List<ExpenseData> getExpenseData() {
    List<ExpenseData> chartData = [
      ExpenseData(
        expenseCategory: 'Mar 8',
        eightyThousand: 33,
        oneLakh: 34,
        oneThousand: 28,
        sixtyThousand: 25,
        tenThousand: 23,
      ),
      ExpenseData(
        expenseCategory: 'Mar 9',
        eightyThousand: 28,
        oneLakh: 26,
        oneThousand: 34,
        sixtyThousand: 32,
        tenThousand: 25,
      ),
      ExpenseData(
        expenseCategory: 'Mar 13',
        eightyThousand: 24,
        oneLakh: 25,
        oneThousand: 30,
        sixtyThousand: 32,
        tenThousand: 23,
      ),
      ExpenseData(
        expenseCategory: 'Mar 18',
        eightyThousand: 72,
        oneLakh: 76,
        oneThousand: 73,
        sixtyThousand: 75,
        tenThousand: 70,
      ),
      ExpenseData(
        expenseCategory: 'Mar 23',
        eightyThousand: 34,
        oneLakh: 26,
        oneThousand: 30,
        sixtyThousand: 25,
        tenThousand: 23,
      ),
    ];
    return chartData;
  }

//custom container
  Container _customContainer({required Widget child}) {
    return Container(
      padding: const EdgeInsets.all(20),
      height: Utils.getScreenHeightByPercentage(39),
      width: Utils.getScreenWidthByPercentage(100),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        boxShadow: const [
          BoxShadow(
            spreadRadius: 2,
            blurRadius: 8,
            color: AppTheme.lightGreyShade,
          )
        ],
        gradient: const LinearGradient(
          colors: [
            Color(0xffECECEC),
            Color(0xffFFFFFF),
            Color(0xffF7F7F7),
          ],
        ),
      ),
      child: child,
    );
  }

//svg of notification icon
  Widget notificationSvg = SvgPicture.asset(
    "assets/svg/not-icon.svg",
    height: 20,
  );

// custom search bar widget
  TextField _searchBarWidget({
    required String hintText,
    required TextEditingController controller,
  }) =>
      TextField(
        controller: controller,
        decoration: InputDecoration(
          prefixIcon: const Icon(
            Icons.search,
            color: Colors.grey,
            size: 23,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          ),
          contentPadding: const EdgeInsets.symmetric(
            vertical: 16.0,
            horizontal: 8,
          ),
          fillColor: Colors.white,
          hintText: hintText,
          hintStyle: GoogleFonts.poppins(
            color: Colors.grey,
            fontSize: 14,
          ),
          filled: true,
        ),
      );
}

class ExpenseData {
  ExpenseData(
      {this.expenseCategory,
      this.oneThousand,
      this.sixtyThousand,
      this.eightyThousand,
      this.tenThousand,
      this.oneLakh});
  final String? expenseCategory;
  final num? oneThousand;
  final num? tenThousand;
  final num? sixtyThousand;
  final num? eightyThousand;
  final num? oneLakh;
}
