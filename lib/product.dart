class Product {
  String title;
  double price;
  String description;
  String imageURL;
  
  Product(this.title, this.price, this.description, this.imageURL);
}

List<Product> productList = <Product>[
  Product('Product 1', 100.0, 'Ok', 'https://cdn.pixabay.com/photo/2021/07/14/17/24/owl-6466676__480.jpg'),
  Product('Product 2', 80.0, 'OK', 'https://cdn.pixabay.com/photo/2018/07/09/19/07/eastern-screech-owl-3526934__480.jpg')
];