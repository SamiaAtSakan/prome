import 'package:flutter/material.dart';
import 'package:prome/profilepages/market/market/add/product_category.dart';
import 'package:prome/utils/color.dart';

class AddMarketPlace extends StatefulWidget {
  const AddMarketPlace({super.key});

  @override
  State<AddMarketPlace> createState() => _AddMarketPlaceState();
}

class _AddMarketPlaceState extends State<AddMarketPlace> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Create New Product",
          style: TextStyle(color: backgroundColor),
        ),
      ),
      body: Column(
        children: [
          Center(
            child: Container(
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
                    labelText: "Product Name",
                    labelStyle: TextStyle(color: backgroundColor),
                    hintText: "Name",
                    hintStyle: TextStyle(color: textColorTitle)),
              ),
            ),
          ),
          Center(
            child: Container(
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
                    labelText: "Product Price",
                    labelStyle: TextStyle(color: backgroundColor),
                    hintText: "Price",
                    hintStyle: TextStyle(color: textColorTitle)),
              ),
            ),
          ),
          Center(
            child: Container(
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
                    labelText: "Select Currency",
                    labelStyle: TextStyle(color: backgroundColor),
                    hintText: "Currency",
                    hintStyle: TextStyle(color: textColorTitle)),
              ),
            ),
          ),
          Flexible(child: Container()),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (builder) => ProductCategory()));
            },
            child: Text(
              "Next",
              style: TextStyle(color: white),
            ),
            style: ElevatedButton.styleFrom(
                backgroundColor: backgroundColor, fixedSize: Size(325, 60)),
          ),
          const SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }
}
