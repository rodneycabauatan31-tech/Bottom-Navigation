import 'package:flutter/material.dart';
import '../models/product_data.dart';
import '../widgets/result_dialog.dart';
import '../widgets/category_radio_group.dart';

class ProductFormScreen extends StatefulWidget {
  @override
  _ProductFormScreenState createState() => _ProductFormScreenState();
}

class _ProductFormScreenState extends State<ProductFormScreen> {
  final _formKey = GlobalKey<FormState>();

  // Controllers
  final _nameController = TextEditingController();
  final _serialController = TextEditingController();
  final _priceController = TextEditingController();

  // Category state
  String _selectedCategory = 'Electronics';

  // Validators
  String? _validateRequired(String? value) {
    return (value == null || value.trim().isEmpty) ? 'This field is required' : null;
  }

  String? _validatePrice(String? value) {
    if (value == null || value.trim().isEmpty) return 'Enter a price';
    final parsed = double.tryParse(value);
    return (parsed == null || parsed < 0) ? 'Enter a valid price' : null;
  }

  void _handleSubmit() {
    if (_formKey.currentState!.validate()) {
      final product = ProductData.fromControllers(
        nameController: _nameController,
        serialController: _serialController,
        priceController: _priceController,
        category: _selectedCategory,
      );

      showDialog(
        context: context,
        builder: (_) => ResultDialog(data: product),
      );
    }
  }

  @override
  void dispose() {
    _nameController.dispose();
    _serialController.dispose();
    _priceController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Product Form')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              TextFormField(
                controller: _nameController,
                decoration: InputDecoration(labelText: 'Product Name'),
                validator: _validateRequired,
              ),
              TextFormField(
                controller: _serialController,
                decoration: InputDecoration(labelText: 'Serial Number'),
                validator: _validateRequired,
              ),
              TextFormField(
                controller: _priceController,
                decoration: InputDecoration(labelText: 'Price'),
                keyboardType: TextInputType.number,
                validator: _validatePrice,
              ),
              SizedBox(height: 16),
              CategoryRadioGroup(
                selectedCategory: _selectedCategory,
                onChanged: (value) => setState(() => _selectedCategory = value),
              ),
              SizedBox(height: 24),
              ElevatedButton(
                onPressed: _handleSubmit,
                child: Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
