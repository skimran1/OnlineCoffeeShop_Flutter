import 'package:flutter/material.dart';

class MenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Our Menu'),
        backgroundColor: Colors.brown,
        elevation: 0, // Remove shadow for a cleaner look
      ),
      backgroundColor: Colors.black, // Background color
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: GridView.builder(
            physics: NeverScrollableScrollPhysics(), // Disable scrolling for GridView inside SingleChildScrollView
            shrinkWrap: true, // Adjust GridView height based on content
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, // Two items per row
              crossAxisSpacing: 15.0, // Space between columns
              mainAxisSpacing: 15.0, // Space between rows
            ),
            itemCount: menuItems.length,
            itemBuilder: (context, index) {
              final item = menuItems[index];
              return Card(
                color: Colors.grey[800], // Card background color
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Expanded(
                      child: Image.asset(
                        item['image'],
                        fit: BoxFit.cover,
                        width: double.infinity,
                        height: 400, // Adjust height as needed
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
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
                          ElevatedButton(
                            onPressed: () {
                              // Handle add to cart logic
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.brown,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                            ),
                            child: Text(
                              'Add to Cart',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  // Sample data for menu items
  final List<Map<String, dynamic>> menuItems = [
    {
      'image': 'assets/images/menu-1.png',
      'name': "Devil's Own",
      'price': '150',
      'originalPrice': '200.0',
    },
    {
      'image': 'assets/images/menu-2.png',
      'name': 'Cold Sparkle',
      'price': '150',
      'originalPrice': '170.0',
    },
    {
      'image': 'assets/images/menu-3.png',
      'name': 'Iced Eskimo',
      'price': '150',
      'originalPrice': '180.0',
    },
    {
      'image': 'assets/images/menu-4.png',
      'name': 'Cafe Frappe',
      'price': '150',
      'originalPrice': '170.0',
    },
    {
      'image': 'assets/images/menu-5.png',
      'name': 'Tropical Iceberg',
      'price': '150',
      'originalPrice': '190.0',
    },
    {
      'image': 'assets/images/menu-6.png',
      'name': 'Dark Frappe',
      'price': '150',
      'originalPrice': '200.0',
    },
  ];
}
