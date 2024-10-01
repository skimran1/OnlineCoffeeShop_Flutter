import 'package:flutter/material.dart';
import 'about.dart'; // Import the AboutPage
import 'menu.dart';
import 'product.dart';
import 'review.dart';
import 'contact.dart';
import 'booktable.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "OnlineCoffeeShop",
          style: TextStyle(
            fontSize: 22, // Adjust font size as needed
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.brown, // Set AppBar background color
        automaticallyImplyLeading: false, // Remove back arrow
        actions: [
          IconButton(
            icon: Icon(Icons.menu), // Menu icon on the right side
            onPressed: () {
              // Show bottom sheet menu when menu button is pressed
              showModalBottomSheet(
                context: context,
                builder: (BuildContext context) {
                  return _buildBottomMenu(context); // Call the bottom menu widget
                },
              );
            },
          ),
        ],
      ),
      body: Stack(
        children: [
          // Background Image
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/home-img.jpeg'), // Your background image
                fit: BoxFit.cover, // Cover entire background
              ),
            ),
          ),
          // Centered Content
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 50.0), // Equivalent to CSS padding
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Title Text (equivalent to h3)
                  Text(
                    'Fresh Coffee in the Morning',
                    style: TextStyle(
                      fontSize: 40, // Equivalent to CSS "font-size: 40px"
                      fontWeight: FontWeight.bold, // Equivalent to CSS "font-weight: bold"
                      color: Colors.white, // Equivalent to CSS "color: #fff"
                    ),
                    textAlign: TextAlign.center, // Center the text
                  ),
                  SizedBox(height: 20), // Equivalent to CSS margin
                  // Subtitle Text (equivalent to p)
                  Text(
                    'Step into our coffee world and experience the aroma of freshly brewed coffee!',
                    style: TextStyle(
                      fontSize: 20, // Equivalent to CSS "font-size: 20px"
                      color: Colors.white70, // Equivalent to CSS "color: #ddd"
                    ),
                    textAlign: TextAlign.center, // Center the text
                  ),
                  SizedBox(height: 30), // Space between text and button
                  // Button (equivalent to .btn class in CSS)
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => BookTablePage()), // Navigate to AboutPage
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(
                          horizontal: 30, vertical: 10), // Button padding
                      backgroundColor: Colors.brown, // Button background color
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30), // Button border radius
                      ),
                    ),
                    child: Text(
                      'Book a Table',
                      style: TextStyle(
                        fontSize: 20, // Button font size
                        color: Colors.white, // Button text color
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Method to build bottom sheet menu
  Widget _buildBottomMenu(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Wrap(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () {
              Navigator.pop(context);
              // Handle navigation to Home
            },
          ),
          ListTile(
            leading: Icon(Icons.info),
            title: Text('About'),
            onTap: () {
              Navigator.pop(context); // Close the bottom sheet
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AboutPage()), // Navigate to AboutPage
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.menu_book),
            title: Text('Menu'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MenuPage()), // Navigate to AboutPage
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.shopping_bag),
            title: Text('Product'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProductPage()), // Navigate to AboutPage
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.star),
            title: Text('Review'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ReviewPage()), // Navigate to AboutPage
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.contact_mail),
            title: Text('Contact'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ContactPage()), // Navigate to AboutPage
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.card_membership),
            title: Text('MyCard'),
            onTap: () {
              Navigator.pop(context);
              // Handle navigation to MyCard
            },
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text('Logout'),
            onTap: () {
              Navigator.pop(context);
              // Handle logout
            },
          ),
        ],
      ),
    );
  }
}
