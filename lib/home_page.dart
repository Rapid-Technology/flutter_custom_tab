import 'package:flutter/material.dart';
import 'package:flutter_custom_tabbar/tab_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Flutter Custom TabBar',
            style: TextStyle(fontSize: 16),
          ),
          centerTitle: true,
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(40),
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              child: Container(
                height: 40,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  color: Colors.green.shade100,
                ),
                child: const TabBar(
                  indicatorSize: TabBarIndicatorSize.tab,
                  dividerColor: Colors.transparent,
                  indicator: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.black54,
                  tabs: [
                    TabItem(title: 'Inbox', count: 6),
                    TabItem(title: 'Archived', count: 3),
                    TabItem(title: 'Deleted', count: 1),
                  ],
                ),
              ),
            ),
          ),
        ),
        body: const TabBarView(
          children: [
            Center(child: Text('Inbox Page')),
            Center(child: Text('Archived Page')),
            Center(child: Text('Deleted Page')),
          ],
        ),
      ),
    );
  }
}
