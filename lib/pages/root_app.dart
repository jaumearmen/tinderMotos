import 'package:flutter/material.dart';
import 'package:tinder_clone/pages/explore_page.dart';
import 'package:tinder_clone/pages/likes_page.dart';

class RootPage extends StatefulWidget {
  const RootPage({Key? key}) : super(key: key);

  @override
  _RootPageState createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
          child: getAppBar(), preferredSize: const Size.fromHeight(100)),
      body: getBody(),
    );
  }

  Widget getBody() {
    return IndexedStack(
      index: pageIndex,
      children: [ExplorePage(), LikesPage()],
    );
  }

  Widget getAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      title: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Container(
            child: IconButton(
              onPressed: () {
                setState(() {
                  pageIndex = 0;
                });
              },
              icon: Icon(Icons.search,
                  color: pageIndex == 0 ? Colors.blue : Colors.grey),
            ),
          ),
          Container(
            child: IconButton(
              onPressed: () {
                setState(() {
                  pageIndex = 1;
                });
              },
              icon: Icon(Icons.stars,
                  color: pageIndex == 1 ? Colors.yellow : Colors.grey),
            ),
          ),
        ]),
      ),
    );
  }
}

/*List.generate(bottomItems.length, (index) {
            return IconButton(
              onPressed: () {
                setState(() {
                  pageIndex = index;
                });
              },
              icon: SvgPicture.asset(
                bottomItems[index],
              ),
            );
          }),*/