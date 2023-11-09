import 'package:flutter/material.dart';
import 'package:group_button/group_button.dart';
import 'package:prome/profilepages/groups/uitls/ss.dart';
import 'package:prome/profilepages/market/market/add/product_descriptions.dart';
import 'package:prome/utils/color.dart';

class ProductCategory extends StatefulWidget {
  const ProductCategory({super.key});

  @override
  State<ProductCategory> createState() => _ProductCategoryState();
}

class _ProductCategoryState extends State<ProductCategory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Product Category",
            style: TextStyle(color: backgroundColor),
          ),
        ),
        body: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            margin: const EdgeInsets.only(left: 20, right: 20, top: 30),
            child: Text(
              'Select A Category',
              style: TextStyle(
                color: Colors.black.withOpacity(0.699999988079071),
                fontSize: 24,
                fontFamily: 'Quicksand',
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 20, right: 20, top: 10),
            child: GroupButton(
              options: ss,
              isRadio: false,
              buttons: [
                "Others",
                "Auto Vehicles",
                "Baby & Chicken Products",
                "Beauty Products & Services",
                "Computers & Accessories",
                "Consumer Electronics",
                "Dating Services",
                "Finanical Services",
                "Gifts & Occussians",
                "Home & Garden",
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (builder) => ProductDescription()));
              },
              child: Text(
                "Next",
                style: TextStyle(color: white),
              ),
              style: ElevatedButton.styleFrom(
                  backgroundColor: backgroundColor, fixedSize: Size(325, 60)),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
        ])));
  }
}
