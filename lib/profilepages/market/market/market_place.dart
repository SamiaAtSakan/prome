import 'package:flutter/material.dart';
import 'package:prome/apis/create_product_api.dart';
import 'package:prome/utils/color.dart';

class Market_Place extends StatefulWidget {
  const Market_Place({super.key});

  @override
  State<Market_Place> createState() => _Market_PlaceState();
}

class _Market_PlaceState extends State<Market_Place> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            width: 200,
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage("assets/pp.png"),
                    ),
                    Text(
                      "Product Name",
                      style: TextStyle(color: backgroundColor),
                    ),
                    ElevatedButton(
                        onPressed: () {
                          ProductApi().getProducts();
                        },
                        child: Text("View Details"))
                  ],
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}
