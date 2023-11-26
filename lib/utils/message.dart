import 'package:flutter/material.dart';

/// SnakBar Code
messageBar(String contexts, BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(contexts)));
}
