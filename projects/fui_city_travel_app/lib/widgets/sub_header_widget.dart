import 'package:flutter/material.dart';

class SubHeaderWidget extends StatelessWidget {
  final String header;
  final void Function() onTabSeeAll;

  const SubHeaderWidget({
    Key? key,
    required this.header,
    required this.onTabSeeAll,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const kHeaderTitleStyle = TextStyle(
      fontSize: 18.0,
      fontWeight: FontWeight.bold,
      color: Colors.black26,
    );

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(header, style: kHeaderTitleStyle),
        TextButton(
          onPressed: onTabSeeAll,
          child: const Text(
            'See all',
            style: TextStyle(
              fontSize: 16.0,
            ),
          ),
        ),
      ],
    );
  }
}
