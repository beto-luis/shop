import 'package:flutter/material.dart';
import 'package:shop/models/product.dart';

class ProductItem extends StatelessWidget {
  final Product product;
  const ProductItem(
    this.product, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(product.imageUrl),
      ),
      title: Text(product.name),
      trailing: Container(
        width: 100,
        child: Row(
          children: [
            IconButton(
              color: Theme.of(context).colorScheme.primary,
              onPressed: () {},
              icon: const Icon(Icons.edit),
            ),
            IconButton(
              color: Theme.of(context).errorColor,
              onPressed: () {},
              icon: const Icon(Icons.delete),
            ),
          ],
        ),
      ),
    );
  }
}
