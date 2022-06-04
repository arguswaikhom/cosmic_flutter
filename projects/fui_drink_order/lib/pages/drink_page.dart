import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:fui_drink_order/models/drink_model.dart';
import 'package:fui_drink_order/resources/app_colors.dart';
import 'package:fui_drink_order/widgets/circular_container.dart';
import 'package:fui_drink_order/widgets/drink_content_widget.dart';

class DrinkPage extends StatefulWidget {
  final DrinkModel drink;

  const DrinkPage({
    Key? key,
    required this.drink,
  }) : super(key: key);

  @override
  _DrinkPageState createState() => _DrinkPageState();
}

class _DrinkPageState extends State<DrinkPage> {
  Widget _getBackgroundWidget() {
    return Column(
      children: [
        Expanded(
          flex: 2,
          child: CachedNetworkImage(
            imageUrl: widget.drink.imageURL,
            height: double.infinity,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
        Expanded(flex: 1, child: Container()),
      ],
    );
  }

  Widget _getQuantityWidget() {
    return CircularContainer(
      margin: EdgeInsets.all(36.0),
      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
      backgroundColor: Theme.of(context).accentColor,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxHeight: 140.0,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            MaterialButton(
              minWidth: 0,
              height: 30,
              shape: CircleBorder(),
              onPressed: () {},
              child: Icon(
                Icons.add,
                size: 18.0,
                color: Colors.white,
              ),
              color: AppColor.backgroundColor,
              elevation: 0.0,
            ),
            CircleAvatar(
              radius: 18.0,
              backgroundColor: AppColor.secondaryTextColor,
              child: Text(
                '2',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            MaterialButton(
              height: 30.0,
              minWidth: 0,
              shape: CircleBorder(),
              onPressed: () {},
              child: Icon(
                Icons.remove,
                size: 18.0,
                color: Colors.white,
              ),
              color: AppColor.backgroundColor,
              elevation: 0.0,
            ),
          ],
        ),
      ),
    );
  }

  Widget _getDrinkNameWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.drink.name,
          style: Theme.of(context).textTheme.headline5,
        ),
        SizedBox(height: 8.0),
        Text(
          widget.drink.type,
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ],
    );
  }

  Widget _getDrinkContentListWidget() {
    return ListView.builder(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      itemCount: widget.drink.contents.length,
      itemBuilder: (context, index) {
        return Row(
          children: [
            DrinkContentWidget(
              minWidth: 64.0,
              quantityInPercentage: widget.drink.contents[index].quantity,
              ingredient: widget.drink.contents[index].content,
            ),
            SizedBox(width: 24.0),
          ],
        );
      },
    );
  }

  Widget _getDrinkPriceWidget() {
    return Row(
      children: [
        Expanded(
          child: CircularContainer(
            padding: EdgeInsets.all(16.0),
            backgroundColor: AppColor.primaryColor,
            child: Center(
              child: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: '\$${widget.drink.price}',
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    TextSpan(text: ' Price x Drink'),
                  ],
                ),
              ),
            ),
          ),
        ),
        SizedBox(width: 16.0),
        Expanded(
          child: CircularContainer(
            padding: EdgeInsets.all(16.0),
            backgroundColor: AppColor.primaryColor,
            child: Center(
              child: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: '\$16',
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    TextSpan(text: ' Total Price'),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _getCheckoutWidget() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            Text(
              'Total Order',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 12.0),
            Column(
              children: [
                Stack(
                  alignment: Alignment.topRight,
                  children: [
                    Icon(
                      Icons.local_bar,
                      color: AppColor.secondaryTextColor,
                      size: 42.0,
                    ),
                    CircleAvatar(
                      radius: 10.0,
                      backgroundColor: AppColor.accentColor,
                      child: Text(
                        '3',
                        style: TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                Text(
                  'Total Drinks',
                  style: Theme.of(context).textTheme.subtitle2,
                )
              ],
            )
          ],
        ),
        Column(
          children: [
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(text: '\$', style: TextStyle()),
                  TextSpan(
                    text: '32',
                    style: Theme.of(context).textTheme.headline5,
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
        CircularContainer(
          minHeight: 150.0,
          padding: EdgeInsets.symmetric(
            horizontal: 16.0,
            vertical: 24.0,
          ),
          backgroundColor: AppColor.accentColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.credit_card_rounded,
                size: 42.0,
              ),
              Text(
                'Mastercard',
                style: TextStyle(
                  fontSize: 12.0,
                  color: Colors.white70,
                ),
              ),
              Text(
                'Pay',
                style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _getBodyWidget() {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        children: [
          Expanded(flex: 4, child: Container()),
          Expanded(
            flex: 5,
            child: Container(
              padding: EdgeInsets.all(24.0),
              decoration: BoxDecoration(
                color: Theme.of(context).scaffoldBackgroundColor,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(32.0),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _getDrinkNameWidget(),
                  SizedBox(height: 53, child: _getDrinkContentListWidget()),
                  _getDrinkPriceWidget(),
                  _getCheckoutWidget(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        _getBackgroundWidget(),
        _getBodyWidget(),
        Align(
          alignment: Alignment(1.0, -0.15),
          child: _getQuantityWidget(),
        ),
        SafeArea(
          child: GestureDetector(
            child: CircularContainer(
              minHeight: 72.0,
              minWidth: 80.0,
              margin: EdgeInsets.only(left: 24.0, top: 16.0),
              backgroundColor: AppColor.backgroundColor,
              child: Icon(
                Icons.arrow_back_ios_rounded,
                color: Colors.white,
              ),
            ),
            onTap: () => Navigator.of(context).pop(),
          ),
        ),
      ],
    );
  }
}
