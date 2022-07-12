import 'package:flutter/material.dart';
import 'package:btvn6/product.dart';

class AddProduct extends StatefulWidget {
  @override
  State<AddProduct> createState() => _AddProductState();

}

class _AddProductState extends State<AddProduct> {
  FocusNode myFocusNode = new FocusNode();

  TextEditingController titleController = TextEditingController();
  TextEditingController priceController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController imgURLController = TextEditingController();

  String url = '';
  String title = '';
  double price = 0.0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text('Add New Product'),
            centerTitle: true,
            actions: [IconButton(onPressed: () {}, icon: Icon(Icons.save))],
          ),
          body: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      'Expand',
                    style: TextStyle(fontSize: 12),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      flex: 1,
                      child: Stack(
                        children: [
                          Container(
                            height: 20,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                              color: Colors.lightBlueAccent,
                            ),
                          ),

                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ));
  }

}



























