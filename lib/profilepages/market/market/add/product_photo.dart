import 'package:flutter/material.dart';
import 'package:prome/profilepages/market/market_place.dart';
import 'package:prome/utils/color.dart';

class ProductPhoto extends StatefulWidget {
  const ProductPhoto({super.key});

  @override
  State<ProductPhoto> createState() => _ProductPhotoState();
}

class _ProductPhotoState extends State<ProductPhoto> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Product Page",
          style: TextStyle(color: backgroundColor),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Add Product Photo",
              style: TextStyle(color: backgroundColor, fontSize: 20),
            ),
          ),
          Image.asset("assets/pp.png"),
          Container(
            margin: const EdgeInsets.only(
              top: 10,
            ),
            width: 325.34,
            height: 70,
            child: TextField(
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: backgroundColor),
                      borderRadius: BorderRadius.all(Radius.circular(18))),
                  errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: backgroundColor),
                      borderRadius: BorderRadius.all(Radius.circular(18))),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: backgroundColor),
                      borderRadius: BorderRadius.all(Radius.circular(18))),
                  fillColor: white,
                  filled: true,
                  labelText: "Product Location",
                  labelStyle: TextStyle(color: backgroundColor),
                  hintText: "Product Location",
                  hintStyle: TextStyle(color: textColorTitle)),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (builder) => MarketPlace()));
            },
            child: Text(
              "Finished",
              style: TextStyle(color: white),
            ),
            style: ElevatedButton.styleFrom(
                backgroundColor: backgroundColor, fixedSize: Size(200, 50)),
          ),
        ],
      ),
    );
  }
}
