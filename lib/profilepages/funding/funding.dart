import 'package:flutter/material.dart';
import 'package:prome/profilepages/funding/browse_funding.dart';
import 'package:prome/profilepages/funding/create_funding.dart';
import 'package:prome/profilepages/funding/fundings.dart';

class Funding extends StatefulWidget {
  const Funding({super.key});

  @override
  State<Funding> createState() => _FundingState();
}

class _FundingState extends State<Funding> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (builder) => CreateFunding()));
                },
                child: Text("Create Funding"))
          ],
          centerTitle: true,
          title: const Text('Funding'),
          bottom: const TabBar(
            dividerColor: Colors.transparent,
            tabs: <Widget>[
              Tab(
                text: 'Browse Funding',
                icon: Icon(Icons.format_underline),
              ),
              Tab(
                text: 'Funding',
                icon: Icon(Icons.foundation),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[BrowseFunding(), Fundings()],
        ),
      ),
    );
  }
}
