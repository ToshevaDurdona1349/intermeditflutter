import 'package:flutter/material.dart';
// TabBar appbarda chiqadi ichiga hohlagancha kategoriyalar bersa bo'ladi
class TapBarView extends StatefulWidget {
  const TapBarView({super.key});

  @override
  State<TapBarView> createState() => _TapBarViewState();
}

class _TapBarViewState extends State<TapBarView> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("TabBar View"),
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.ac_unit),text: "Home",),
              Tab(icon: Icon(Icons.account_balance_wallet_outlined),text: "School",),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Container(
              color: Colors.pink,
              child: Center(
                child: Text("Page School"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
