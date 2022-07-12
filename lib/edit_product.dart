import 'package:btvn6/product.dart';
import 'package:flutter/material.dart';

class EditProduct extends StatefulWidget {
  Product productModel;
  EditProduct({required this.productModel});
  @override
  State<EditProduct> createState() => _EditProductState();
}

class _EditProductState extends State<EditProduct> {
  FocusNode myFocusNode = new FocusNode();

  late TextEditingController titleController;
  late TextEditingController priceController;
  late TextEditingController descriptrionController;
  late TextEditingController imageURLController;

  String url = '';

  @override
  void initState() {
    titleController = TextEditingController(text: widget.productModel.title);
    priceController =
        TextEditingController(text: widget.productModel.price.toString());
    descriptrionController =
        TextEditingController(text: widget.productModel.description);
    imageURLController =
        TextEditingController(text: widget.productModel.imageURL);
    super.initState();
    Future.delayed(Duration.zero, () {
      setState(() {
        url = widget.productModel.imageURL;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }

 
}
