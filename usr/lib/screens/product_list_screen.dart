import 'package:flutter/material.dart';
import '../models/product_model.dart';
import '../widgets/product_card.dart';

class ProductListScreen extends StatefulWidget {
  const ProductListScreen({super.key});

  @override
  State<ProductListScreen> createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {
  // Mock data for products
  final List<Product> products = [
    Product(id: '1', name: 'Gold Flake Kings', brand: 'Gold Flake', price: 350.00, imageUrl: 'https://via.placeholder.com/150'),
    Product(id: '2', name: 'Classic Milds', brand: 'Classic', price: 340.00, imageUrl: 'https://via.placeholder.com/150'),
    Product(id: '3', name: 'Marlboro Gold', brand: 'Marlboro', price: 360.00, imageUrl: 'https://via.placeholder.com/150'),
    Product(id: '4', name: 'Navy Cut', brand: 'Wills', price: 200.00, imageUrl: 'https://via.placeholder.com/150'),
    Product(id: '5', name: 'Benson & Hedges', brand: 'B&H', price: 370.00, imageUrl: 'https://via.placeholder.com/150'),
    Product(id: '6', name: 'Dunhill', brand: 'Dunhill', price: 400.00, imageUrl: 'https://via.placeholder.com/150'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Available Products'),
        backgroundColor: Colors.grey[900],
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10.0),
        itemCount: products.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
          childAspectRatio: 0.75,
        ),
        itemBuilder: (context, index) {
          return ProductCard(product: products[index]);
        },
      ),
    );
  }
}
