import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Products',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ProductHome(),
    );
  }
}

class ProductHome extends StatelessWidget {
  ProductHome({super.key});

  final List<ProductCard> productList = [
    const ProductCard(
        productName: "OPPO",
        productPrice: 8500,
        productImg: "https://jagandigitech.in/flutter/learn/images/oppo.png"),
    const ProductCard(
        productName: "iPhone",
        productPrice: 50500,
        productImg: "https://jagandigitech.in/flutter/learn/images/iphone.png"),
    const ProductCard(
        productName: "samsung",
        productPrice: 15250,
        productImg:
            "https://jagandigitech.in/flutter/learn/images/samsung.jpg"),
    const ProductCard(
        productName: "OPPO",
        productPrice: 8500,
        productImg: "https://jagandigitech.in/flutter/learn/images/oppo.png"),
    const ProductCard(
        productName: "iPhone",
        productPrice: 50500,
        productImg: "https://jagandigitech.in/flutter/learn/images/iphone.png"),
    const ProductCard(
        productName: "samsung",
        productPrice: 15250,
        productImg:
            "https://jagandigitech.in/flutter/learn/images/samsung.jpg"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Products List")),
      body: ListView(
        children: productList,
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  const ProductCard(
      {super.key,
      required this.productName,
      required this.productPrice,
      required this.productImg});

  final String productName;
  final int productPrice;
  final String productImg;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Card(
        child: Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(5),
              child: Image.network(
                productImg,
                width: 100,
                height: 100,
              ),
            ),
            Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Text(productName),
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Text(productPrice.toString()),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
