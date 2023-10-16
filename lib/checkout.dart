import 'package:flutter/material.dart';

class MyCart extends StatelessWidget {
  const MyCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        title: Text(
          "My Cart",
          style: TextStyle(
            color: Color.fromARGB(255, 103, 144, 105),
            fontWeight: FontWeight.bold,
            letterSpacing: 1.0,
          ),
        ),
      ),
      body: Column(
        children: [
          MyCheckout(
              product:
                  "https://cdn.shopify.com/s/files/1/0150/6262/files/the-sill_Majesty-Palm_Large_Pallas_Cream_Variant.jpg?v=1688569810",
              plant: "Palm Plant",
              size: "Size: M",
              price: "60 USD"),
          Divider(
            color: Colors.black26,
            height: 1.0,
          ),
          MyCheckout(
              product:
                  "https://nurserylive.com/cdn/shop/products/nurserylive-plants-sansevieria-trifasciata-hahnii-snake-plant-plant-16969295855756.jpg?v=1634228043",
              plant: "Sansevieria plant",
              size: "Size: M",
              price: "80 USD"),
          Divider(
            color: Colors.black26,
            height: 1.0,
          ),
          Spacer(),
          MyPay(),
          // Checkout button
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                  Color.fromARGB(255, 103, 144, 105),
                ),
              ),
              child: Text('Checkout'),
            ),
          ),
        ],
      ),
    );
  }
}

class MyPay extends StatelessWidget {
  const MyPay({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Subtotal'),
                Text('140 USD'),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Delivery Costs'),
                Text('0.0 USD'),
              ],
            ),
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'TOTAL',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '140 USD',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MyCheckout extends StatelessWidget {
  final String product;
  final String plant;
  final String size;
  final String price;

  const MyCheckout({
    super.key,
    required this.product,
    required this.plant,
    required this.size,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(top: 8.0),
            width: 150,
            height: 130,
            decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.white,
                  width: 8.0,
                ),
                borderRadius: BorderRadius.circular(15),
                color: Colors.yellow,
                image: DecorationImage(
                  image: NetworkImage(
                    product,
                  ),
                  fit: BoxFit.fitWidth,
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  plant,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 6.0,
                ),
                Text(
                  size,
                  style: TextStyle(
                    color: Colors.black45,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: 8.0,
                ),
                Text(
                  price,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 8.0,
                ),
                Container(
                  width: 90,
                  height: 30,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color.fromARGB(255, 103, 144, 105),
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 8.0, right: 8.0),
                        child: Text(
                          "-",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15.0, right: 15.0),
                        child: Text(
                          "1",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 8.0, right: 8.0),
                        child: Text(
                          "+",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              child: Icon(
                Icons.close_outlined,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
