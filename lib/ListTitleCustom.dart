import 'package:flutter/material.dart';
import 'package:btvn6/product.dart';

import 'edit_product.dart';

class ListTitleCustom extends StatelessWidget {
  Product productModel;
  ListTitleCustom({required this.productModel});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 50,
          height: 50,
          padding: const EdgeInsets.symmetric(vertical: 4.0),
          alignment: Alignment.center,
          child: CircleAvatar(
            backgroundImage: NetworkImage(
              productModel.imageURL,
            ),
          ),
        ),
        Expanded(child: Text(productModel.title),
        ),
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => EditProduct(productModel: productModel)),
            );
          },
          child: const Icon(
            Icons.edit,
            color: Colors.purple,
          ),
        ),

        InkWell(
          onTap: () {},
          child: const Icon(
            Icons.apartment,
            color: Colors.green,
          ),
        ),
        InkWell(
          onTap: () {},
          child: const Icon(
            Icons.delete,
            color: Colors.red,
          ),
        )
      ],
    );
  }

}