import 'package:flutter/material.dart';

Widget buildCountCard(String title, dynamic count, IconData iconData) {
  return Container(
    width: 150,
    height: 120,
    child: Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(iconData),
            Text(
              title,
            ),
            SizedBox(height: 8),
            buildCountWidget(count),
          ],
        ),
      ),
    ),
  );
}

Widget buildCountWidget(dynamic count) {
  if (count is int) {
    return Text(
      count.toString(),
      style: TextStyle(fontSize: 16),
    );
  } else if (count is List<dynamic>) {
    return Text(
      '${count.length}',
      style: TextStyle(fontSize: 16),
    );
  } else {
    return Text(
      'Unknown format',
      style: TextStyle(fontSize: 16),
    );
  }
}
