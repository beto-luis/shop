import 'package:flutter/material.dart';
import 'package:shop/models/product.dart';

class ProductDetailPage extends StatelessWidget {
 
  const ProductDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
  final Product product = ModalRoute.of(context)!.settings.arguments as Product;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text(product.title,
        style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
