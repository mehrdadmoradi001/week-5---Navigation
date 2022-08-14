import 'package:flutter/material.dart';

Widget getBlogPost({required String ImageName, required String title}) {
  return Column(
    children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image(
          image: AssetImage('images/$ImageName.png'),
        ),
      ),
      Text(
        ' برای 14 آبان$title سیگنال خرید : ',
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
      SizedBox(height: 10),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'فروش روی : 12,560',
            style: TextStyle(color: Colors.red),
          ),
          Icon(
            Icons.sell,
            size: 20,
            color: Colors.red,
          ),
          SizedBox(width: 20),
          Text(
            'خرید روی : 12,365',
            style: TextStyle(color: Colors.green),
          ),
          Icon(
            Icons.price_check,
            size: 25,
            color: Colors.green,
          ),
        ],
      ),
      Container(
        width: 200,
        child: Divider(
          thickness: 1,
          color: Colors.black,
        ),
      ),
    ],
  );
}
