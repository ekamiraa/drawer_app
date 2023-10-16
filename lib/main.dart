import 'package:flutter/material.dart';
import 'package:drawer_app/checkout.dart';
import 'package:drawer_app/shoppingcart.dart';
import 'package:drawer_app/setting.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: Colors.grey[300]),
      home: MyHome(),
    );
  }
}

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        title: Text(
          "Good Morning!",
          style: TextStyle(
            color: Color.fromARGB(255, 103, 144, 105),
            fontWeight: FontWeight.bold,
            letterSpacing: 1.0,
          ),
        ),
      ),
      endDrawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 103, 144, 105),
              ),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: NetworkImage(
                        "https://marketplace.canva.com/EAFqNrAJpQs/1/0/1600w/canva-neutral-pink-modern-circle-shape-linkedin-profile-picture-WAhofEY5L1U.jpg"),
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Text(
                    "Eka Mira",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Text(
                    "ekamiranovitas@gmail.com",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.home_filled),
              title: Text("Home"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MyHome(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.add_card_rounded),
              title: Text("Cart"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MyCart(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Setting"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MySetting(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              trailing: Icon(Icons.cancel),
              title: Text("Close"),
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            MySearch(),
            Padding(
              padding: EdgeInsets.only(left: 16.0, right: 16.0),
              child: GridView(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisExtent: 260,
                  crossAxisCount: 2,
                  crossAxisSpacing: 2,
                  mainAxisSpacing: 2,
                ),
                children: [
                  MyProduct(
                      product:
                          "https://cdn.shopify.com/s/files/1/0150/6262/files/the-sill_Majesty-Palm_Large_Pallas_Cream_Variant.jpg?v=1688569810",
                      plant: "Palm Plant",
                      type: "indoor plant",
                      price: "60 USD"),
                  MyProduct(
                      product:
                          "https://nurserylive.com/cdn/shop/products/nurserylive-g-sedum-adolphii-succulent-plant.jpg?v=1634228198",
                      plant: "Succulent plant",
                      type: "indoor plant",
                      price: "60 USD"),
                  MyProduct(
                      product:
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSj7U30mI_mF2y9yoqNAQ_wh2sxhVRXqJ12TQ&usqp=CAU",
                      plant: "Aloe Plant",
                      type: "indoor plant",
                      price: "100 USD"),
                  MyProduct(
                      product:
                          "https://nurserylive.com/cdn/shop/products/nurserylive-plants-sansevieria-trifasciata-hahnii-snake-plant-plant-16969295855756.jpg?v=1634228043",
                      plant: "Sansevieria plant",
                      type: "indoor plant",
                      price: "80 USD"),
                  MyProduct(
                      product:
                          "https://cdn.shopify.com/s/files/1/0150/6262/files/the-sill_Majesty-Palm_Large_Pallas_Cream_Variant.jpg?v=1688569810",
                      plant: "Palm Plant",
                      type: "indoor plant",
                      price: "60 USD"),
                  MyProduct(
                      product:
                          "https://nurserylive.com/cdn/shop/products/nurserylive-g-sedum-adolphii-succulent-plant.jpg?v=1634228198",
                      plant: "Succulent plant",
                      type: "indoor plant",
                      price: "60 USD"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MyProduct extends StatelessWidget {
  final String product;
  final String plant;
  final String type;
  final String price;

  const MyProduct({
    super.key,
    required this.product,
    required this.plant,
    required this.type,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 180,
        height: 250,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
            )
          ],
        ),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 8.0),
              width: 150,
              height: 130,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.yellow,
                  image: DecorationImage(
                    image: NetworkImage(product),
                    fit: BoxFit.fitWidth,
                  )),
            ),
            ListTile(
              title: Text(
                plant,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(type),
            ),
            Padding(
              padding: EdgeInsets.only(left: 16.0, right: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    price,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 103, 144, 105),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Icon(
                      Icons.shopping_cart_checkout,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MySearch extends StatelessWidget {
  const MySearch({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: TextField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 15.0),
          border: UnderlineInputBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          fillColor: Colors.white,
          filled: true,
          hintText: "Search",
          prefixIcon: Icon(
            Icons.search,
            size: 30.0,
          ),
          suffixIcon: IconButton(
            icon: Icon(Icons.clear),
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}
