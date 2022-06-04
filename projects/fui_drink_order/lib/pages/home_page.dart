import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:fui_drink_order/mocks/drink_mocks.dart';
import 'package:fui_drink_order/pages/drink_page.dart';
import 'package:fui_drink_order/resources/app_colors.dart';
import 'package:fui_drink_order/widgets/circular_container.dart';
import 'package:fui_drink_order/widgets/discount_drink_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget _getHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Tonight',
              style: Theme.of(context).textTheme.headline3,
            ),
            SizedBox(height: 10.0),
            Text(
              'Monday, November 25',
              style: Theme.of(context).textTheme.bodyText1,
            )
          ],
        ),
        CircularContainer(
          padding: EdgeInsets.all(16.0),
          backgroundColor: AppColor.accentColor,
          child: Column(
            children: [
              CircleAvatar(
                radius: 12.0,
                child: Text('3'),
                backgroundColor: AppColor.backgroundColor,
              ),
              Icon(
                Icons.local_bar,
                size: 36.0,
                color: Colors.white,
              ),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(text: '\$'),
                    TextSpan(
                      text: ' 32',
                      style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                'Total Price',
                style: Theme.of(context).textTheme.subtitle2,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _getTabBar() {
    return Container(
      child: TabBar(
        labelPadding: EdgeInsets.zero,
        tabs: [
          Tab(text: 'Promotion'),
          Tab(text: 'Free Drink'),
          Tab(text: 'Happy Hour'),
        ],
        indicator: BoxDecoration(
          border: Border.all(
            color: AppColor.accentColor,
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(24.0),
        ),
        overlayColor: MaterialStateProperty.all<Color>(
          Colors.transparent,
        ),
      ),
    );
  }

  Widget _getTabBarView() {
    return Expanded(
      child: TabBarView(
        physics: BouncingScrollPhysics(),
        children: [
          PageView.builder(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.vertical,
            itemCount: kDrinks.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                child: DiscountDrinkWidget(
                  drink: kDrinks[index],
                ),
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => DrinkPage(
                      drink: kDrinks[index],
                    ),
                  ),
                ),
              );
            },
          ),
          Center(child: Text('Free Drinks')),
          Center(child: Text('Happy Hour'))
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).scaffoldBackgroundColor,
      child: SafeArea(
        child: DefaultTabController(
          length: 3,
          child: Scaffold(
            body: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                children: [
                  _getHeader(),
                  SizedBox(height: 24.0),
                  _getTabBar(),
                  SizedBox(height: 24.0),
                  _getTabBarView(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
