import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Our Products'),
        backgroundColor: Colors.brown,
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        padding: EdgeInsets.all(15.0),
        child: Column(
          children: List.generate(productItems.length, (index) {
            final item = productItems[index];
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0), // Space between products
              child: Card(
                color: Colors.grey[800],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        // Image Container
                        Expanded(
                          flex: 1, // Half of the row
                          child: Container(
                            height: 150,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                item['image'],
                                fit: BoxFit.cover,
                                width: double.infinity,
                              ),
                            ),
                          ),
                        ),
                        // Info Container
                        Expanded(
                          flex: 1, // Other half of the row
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  item['name'],
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(height: 8),
                                Row(
                                  children: List.generate(5, (i) {
                                    return Icon(
                                      Icons.star,
                                      color: i < item['rating'] ? Colors.amber : Colors.white54,
                                      size: 20,
                                    );
                                  }),
                                ),
                                SizedBox(height: 8),
                                Text(
                                  'Rs.${item['price']}',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(height: 4),
                                Text(
                                  'Rs.${item['originalPrice']}',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.white70,
                                    decoration: TextDecoration.lineThrough,
                                  ),
                                ),
                                SizedBox(height: 8),
                                SizedBox(
                                  width: double.infinity,
                                  child: ElevatedButton(
                                    onPressed: () {
                                      // Handle buy now logic, no navigation
                                    },
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.brown,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                                    ),
                                    child: Text(
                                      'Buy Now',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          }),
        ),
      ),
    );
  }

  // Sample data for product items
  final List<Map<String, dynamic>> productItems = [
    {
      'image': 'assets/images/coffee_img1.webp',
      'name': 'Nescafe Classic',
      'price': '150',
      'originalPrice': '170.0',
      'rating': 4.5,
    },
    {
      'image': 'assets/images/coffee_img2.webp',
      'name': 'BRU Instant',
      'price': '292',
      'originalPrice': '380.0',
      'rating': 4.5,
    },
    {
      'image': 'assets/images/coffee_img3.webp',
      'name': 'Contineltal',
      'price': '195',
      'originalPrice': '280.0',
      'rating': 4.5,
    },
  ];
}

class OrderPage extends StatelessWidget {
  final Map<String, dynamic> product;

  OrderPage(this.product);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Order ${product['name']}'),
        backgroundColor: Colors.brown,
      ),
      body: Center(
        child: Text('Order Page for ${product['name']}'),
      ),
    );
  }
}
