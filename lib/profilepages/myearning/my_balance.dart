import 'package:flutter/material.dart';
import 'package:prome/profilepages/myearning/add_funds.dart';
import 'package:prome/profilepages/myearning/balancetab/send_money.dart';

class MyBalance extends StatefulWidget {
  const MyBalance({super.key});

  @override
  State<MyBalance> createState() => _MyBalanceState();
}

class _MyBalanceState extends State<MyBalance> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Wallet & Credits'),
          bottom: const TabBar(
            dividerColor: Colors.transparent,
            tabs: <Widget>[
              Tab(
                text: 'Send Money',
                icon: Icon(Icons.money),
              ),
              Tab(
                text: 'Add Funds',
                icon: Icon(Icons.functions_rounded),
              ),
            ],
          ),
          actions: [
            Text(
              "Current Balance \n 23\$",
              textAlign: TextAlign.center,
            )
          ],
        ),
        body: TabBarView(
          children: <Widget>[SendMoney(), AddFunds()],
        ),
      ),
    );
  }
}
