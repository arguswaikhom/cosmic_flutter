import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:fui_fashion_mobile_app_design/mocks/entry_model_mock.dart';
import 'package:fui_fashion_mobile_app_design/pages/post_page.dart';
import 'package:fui_fashion_mobile_app_design/widgets/entry_widget.dart';

class FashionWeekPage extends StatefulWidget {
  const FashionWeekPage({Key? key}) : super(key: key);

  @override
  _FashionWeekPageState createState() => _FashionWeekPageState();
}

class _FashionWeekPageState extends State<FashionWeekPage> {
  Widget _getContent() {
    return CustomScrollView(
      slivers: [
        SliverStaggeredGrid.countBuilder(
          crossAxisCount: 2,
          itemCount: entryModelMockData.length,
          itemBuilder: (BuildContext context, int index) => EntryWidget(
            entry: entryModelMockData[index],
            onClick: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => PostPage(entry: entryModelMockData[index]),
            )),
          ),
          staggeredTileBuilder: (index) {
            if ((index + 1) % 3 == 0) return StaggeredTile.fit(2);
            if (index == entryModelMockData.length - 1 && index % 3 == 0)
              return StaggeredTile.fit(2);
            return StaggeredTile.fit(1);
          },
          mainAxisSpacing: 32.0,
        ),
      ],
    );
  }

  PreferredSizeWidget _getTabs() {
    return PreferredSize(
      preferredSize: const Size.fromHeight(kToolbarHeight),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: TabBar(
          indicatorColor: Colors.transparent,
          labelPadding: EdgeInsets.symmetric(vertical: 8.0),
          labelColor: Color(0xffB16FF0),
          unselectedLabelColor: Colors.black,
          tabs: [
            Align(
              child: Tab(text: 'Recommended'),
              alignment: Alignment.centerLeft,
            ),
            Tab(text: 'New Models'),
            Tab(text: '2020 Show'),
          ],
        ),
      ),
    );
  }

  Widget _getAppBar() {
    final double minH = 2 * kToolbarHeight;
    final double maxH = 250.0;

    final double minFS = 22.0;
    final double maxFS = 36.0;

    return SliverAppBar(
      pinned: true,
      backgroundColor: Colors.white,
      leading: IconButton(
        color: Colors.black,
        iconSize: 30.0,
        icon: Icon(Icons.short_text_rounded),
        onPressed: () {},
      ),
      actions: [
        IconButton(
          color: Colors.black,
          iconSize: 30.0,
          icon: Icon(Icons.search_rounded),
          onPressed: () {},
        )
      ],
      collapsedHeight: kToolbarHeight,
      expandedHeight: maxH,
      bottom: _getTabs(),
      flexibleSpace: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Stack(
          children: [
            LayoutBuilder(
              builder: (BuildContext content, BoxConstraints constraints) {
                final double currH = constraints.biggest.height;

                final double remH = maxH - currH;
                final double transUnit = (maxH - minH) / 10;
                final double x = -1 + ((remH / transUnit) * 0.1);
                final double y = -0.4 - ((remH / ((maxH - minH) / 3)) * 0.1);
                final double fontSize = minFS +
                    ((currH - minH) / ((maxH - minH) / (maxFS - minFS)));

                return Align(
                  alignment: Alignment(x, y),
                  child: Text(
                    'Fashion Week',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: fontSize,
                      color: Color(0xffB16FF0),
                    ),
                  ),
                );
              },
            ),
            FlexibleSpaceBar(
              background: Container(
                margin: EdgeInsets.only(
                  top: kToolbarHeight + 56,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('2020 Fashion show in Paris'),
                    SizedBox(height: 20.0),
                    Row(
                      children: [
                        Text(
                          'Explore',
                          style: TextStyle(
                            fontSize: 32.0,
                            fontWeight: FontWeight.w600,
                            color: Colors.black87,
                          ),
                        ),
                        Expanded(child: Container()),
                        IconButton(
                          icon: Icon(Icons.tune_rounded),
                          onPressed: () {},
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _getBodyWidget() {
    return Container(
      color: Colors.white,
      child: NestedScrollView(
        physics: BouncingScrollPhysics(),
        headerSliverBuilder: (context, innerBoxIsScrolled) => [_getAppBar()],
        body: TabBarView(
          children: [
            _getContent(),
            _getContent(),
            _getContent(),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: DefaultTabController(
          length: 3,
          child: Scaffold(
            body: _getBodyWidget(),
          ),
        ),
      ),
    );
  }
}
