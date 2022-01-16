import 'package:cosmic_flutter/src/models/expansion_entry.dart';
import 'package:flutter/material.dart';

typedef ExpansionCallback = void Function(int index, bool isExpanded);

class ExpansionEntryList extends StatelessWidget {
  final List<ExpansionEntry> children;
  final ExpansionCallback? expansionCallback;

  const ExpansionEntryList({
    Key? key,
    this.expansionCallback,
    this.children = const <ExpansionEntry>[],
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: children.length,
      itemBuilder: (context, index) {
        return _getExpansionEntryWidget(index);
      },
    );
  }

  Widget _getExpansionEntryWidget(int index) {
    final ExpansionEntry ee = children[index];

    final Widget header = InkWell(
      child: Row(
        children: [
          Expanded(child: ee.headerBuilder(ee.isExpanded)),
          ExpandIcon(
            isExpanded: ee.isExpanded,
            padding: const EdgeInsets.all(16.0),
            onPressed: null,
          ),
        ],
      ),
      onTap: () => expansionCallback != null
          ? expansionCallback!(index, ee.isExpanded)
          : () {},
    );

    if (ee.isExpanded) {
      return Column(
        children: <Widget>[
          header,
          AnimatedCrossFade(
            firstChild: Container(height: 0.0),
            secondChild: ee.body,
            firstCurve: const Interval(0.0, 0.6, curve: Curves.fastOutSlowIn),
            secondCurve: const Interval(0.4, 1.0, curve: Curves.fastOutSlowIn),
            sizeCurve: Curves.fastOutSlowIn,
            crossFadeState: ee.isExpanded
                ? CrossFadeState.showSecond
                : CrossFadeState.showFirst,
            duration: const Duration(milliseconds: 200),
          ),
        ],
      );
    }

    return header;
  }
}
