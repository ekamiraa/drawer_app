import 'package:flutter/material.dart';

class ShoppingCartWidget extends StatelessWidget {
  const ShoppingCartWidget({Key? key}) : super(key: key);

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
          // Cart items list
          Expanded(
            child: ListView.builder(
              itemCount: 2,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text('Succulent Plant'),
                  subtitle: Text('Size: M'),
                  trailing: Text('\$60'),
                );
              },
            ),
          ),

          // Promo code section
          Container(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter Promo Code',
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Apply'),
                ),
              ],
            ),
          ),

          // Total section
          Container(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Subtotal'),
                    Text('\$120'),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Delivery Costs'),
                    Text('\$0.00'),
                  ],
                ),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('TOTAL'),
                    Text('\$120'),
                  ],
                ),
              ],
            ),
          ),

          // Checkout button
          ElevatedButton(
            onPressed: () {},
            child: Text('Checkout'),
          ),
        ],
      ),
    );
  }
}
