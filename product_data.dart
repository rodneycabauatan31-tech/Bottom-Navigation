import 'package:flutter/material.dart';

class ProductData {
  String name;
  String serial;
  double price;
  String category;

  ProductData({
    this.name = '',
    this.serial = '',
    this.price = 0.0,
    this.category = '',
  });

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'serial': serial,
      'price': price,
      'category': category,
    };
  }

  factory ProductData.fromControllers({
    required TextEditingController nameController,
    required TextEditingController serialController,
    required TextEditingController priceController,
    required String category,
  }) {
    return ProductData(
      name: nameController.text,
      serial: serialController.text,
      price: double.tryParse(priceController.text) ?? 0.0,
      category: category,
    );
  }

  @override
  String toString() {
    return 'Name: $name\nSerial: $serial\nPrice: \$${price.toStringAsFixed(2)}\nCategory: $category';
  }
}
