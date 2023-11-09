import 'package:flutter/material.dart';
import 'package:prome/profilepages/market/market/add/product_photo.dart';
import 'package:prome/utils/color.dart';

class ProductDescription extends StatefulWidget {
  const ProductDescription({super.key});

  @override
  State<ProductDescription> createState() => _ProductDescriptionState();
}

class _ProductDescriptionState extends State<ProductDescription> {
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
          Center(
            child: Container(
              margin: const EdgeInsets.only(
                top: 10,
              ),
              width: 325.34,
              height: 70,
              child: TextField(
                maxLines: 6,
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
                    labelText: "Product Description",
                    labelStyle: TextStyle(color: backgroundColor),
                    hintText: "Description",
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
                    labelText: "Product Currency",
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
                  MaterialPageRoute(builder: (builder) => ProductPhoto()));
            },
            child: Text(
              "Finish",
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
