import 'package:btvn6/ListTitleCustom.dart';
import 'package:btvn6/product.dart';
import 'package:flutter/material.dart';
import 'add_product.dart';
class ProductList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        title: Text('Your Products'),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AddProduct()),
            );
          }, icon: const Icon(
            Icons.add,
            color: Colors.white,
          ),
          )
        ],
      ),
      body: ListView.separated(
          padding: const EdgeInsets.all(8),
          itemBuilder: (BuildContext context, int index) {
            return ListTitleCustom(productModel: productList[index],
            );
          },
          separatorBuilder: (BuildContext context, int index) => const Divider(
            thickness: 1,
            color: Colors.black12,
          ) ,
          itemCount: productList.length),
    ));
  }
}