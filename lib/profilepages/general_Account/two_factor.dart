import 'package:flutter/material.dart';
import 'package:prome/utils/color.dart';

enum Groceries { disable, enable }

class TwoFactor extends StatefulWidget {
  const TwoFactor({super.key});

  @override
  State<TwoFactor> createState() => _TwoFactorState();
}

class _TwoFactorState extends State<TwoFactor> {
  @override
  Widget build(BuildContext context) {
    Groceries? _groceryItem = Groceries.enable;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Two Factor Authentication",
          style: TextStyle(color: backgroundColor),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Two Factor Authentication",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 15),
            ),
          ),
          RadioListTile<Groceries>(
            value: Groceries.enable,
            groupValue: _groceryItem,
            onChanged: (Groceries? value) {
              setState(() {
                _groceryItem = value;
              });
            },
            title: const Text('Enable'),
          ),
          RadioListTile<Groceries>(
            value: Groceries.disable,
            groupValue: _groceryItem,
            onChanged: (Groceries? value) {
              setState(() {
                _groceryItem = value;
              });
            },
            title: const Text('Disable'),
          )
        ],
      ),
    );
  }
}
