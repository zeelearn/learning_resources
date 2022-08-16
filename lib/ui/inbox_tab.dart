import 'package:flutter/material.dart';

class InboxTabs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        // removing this drawer solves the problem
        // ,but drawer icon is removed from the appbar
        drawer: Drawer(),
        appBar: AppBar(
          title: const Text('Inbox'),
          bottom: const TabBar(
            tabs: <Widget>[
              Tab(
                text: "Important",
              ),
              Tab(
                text: "Others",
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            TabPage(
              page: 'important',
            ),
            TabPage(
              page: 'others',
            ),
          ],
        ),
      ),
    );
  }
}
class TabPage extends StatelessWidget {
  final String page;

  TabPage({required this.page});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('$page'),
    );
  }
}
