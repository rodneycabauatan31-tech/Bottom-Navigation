import 'package:flutter/material.dart';

class CategoryRadioGroup extends StatelessWidget {
  final String selectedCategory;
  final ValueChanged<String> onChanged;

  CategoryRadioGroup({
    required this.selectedCategory,
    required this.onChanged,
  });

  final List<String> categories = [
    'Electronics',
    'Clothing',
    'Books',
    'Home',
    'Toys',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Category', style: Theme.of(context).textTheme.subtitle1),
        ...categories.map((category) {
          return RadioListTile<String>(
            title: Text(category),
            value: category,
            groupValue: selectedCategory,
            onChanged: onChanged,
          );
        }).toList(),
      ],
    );
  }
}

CategoryRadioGroup(
selectedCategory: _selectedCategory,
onChanged: (value) => setState(() => _selectedCategory = value),
),
