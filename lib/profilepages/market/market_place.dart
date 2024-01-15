import 'package:flutter/material.dart';
import 'package:prome/profilepages/market/market/add/add_market_place.dart';
import 'package:prome/profilepages/market/market/market_place.dart';
import 'package:prome/profilepages/market/market/market_product.dart';
import 'package:prome/utils/color.dart';

class MarketPlace extends StatefulWidget {
  const MarketPlace({super.key});

  @override
  State<MarketPlace> createState() => _MarketPlaceState();
}

class _MarketPlaceState extends State<MarketPlace> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 2,
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: backgroundColor,
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (builder) => AddMarketPlace()));
          },
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Market Place'),
          bottom: const TabBar(
            dividerColor: Colors.transparent,
            tabs: <Widget>[
              Tab(
                text: 'Market Place',
                icon: Icon(Icons.featured_play_list),
              ),
              Tab(
                text: 'Products',
                icon: Icon(Icons.production_quantity_limits),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[Market_Place(), MarketProduct()],
        ),
      ),
    );
  }
}
