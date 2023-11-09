import 'package:flutter/material.dart';
import 'package:prome/utils/color.dart';

class OfferPage extends StatefulWidget {
  const OfferPage({super.key});

  @override
  State<OfferPage> createState() => _OfferPageState();
}

class _OfferPageState extends State<OfferPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Offers",
            style: TextStyle(
                color: textColorTitle,
                fontSize: 18,
                fontWeight: FontWeight.w500),
          ),
        ),
        body: ListView.builder(
            // the number of items in the list

            // display each item of the product list
            itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              trailing: TextButton(onPressed: () {}, child: Text("View Offer")),
              leading: const CircleAvatar(
                backgroundImage: AssetImage("assets/srf.png"),
              ),
              title: Text(
                "Ali Send you offer on your product",
                style: TextStyle(
                    color: textColorTitle,
                    fontSize: 14,
                    fontWeight: FontWeight.w700),
              ),
              subtitle: Text("\$35"),
            ),
          );
        }));
  }
}
