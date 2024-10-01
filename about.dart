import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Us'),
        backgroundColor: Colors.brown,
        elevation: 0, // Remove shadow for a cleaner look
      ),
      backgroundColor: Colors.black, // Set background color to black
      body: SingleChildScrollView(
        padding: EdgeInsets.all(15.0), // Padding around the content
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Heading
            Text(
              'About Us',
              style: TextStyle(
                fontSize: 36, // Font size equivalent to CSS
                fontWeight: FontWeight.bold,
                color: Colors.white, // Heading color
              ),
            ),
            SizedBox(height: 20),
            // Row with image and content
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Image
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: EdgeInsets.only(right: 15.0), // Space between image and text
                    child: Image.asset(
                      'assets/images/about-img1.png',
                      width: double.infinity, // Make image responsive
                      height: 600,
                      fit: BoxFit.cover, // Image fit
                    ),
                  ),
                ),
                // Content
                Expanded(
                  flex: 1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'What Makes Our Coffee Special?',
                        style: TextStyle(
                          fontSize: 24, // Font size equivalent to CSS
                          color: Colors.white, // Text color
                          fontWeight: FontWeight.bold, // Bold text
                        ),
                      ),
                      SizedBox(height: 16),
                      Text(
                        'Many coffee shops pride themselves on sourcing high-quality beans from specific regions or farms. They may describe the unique flavor profile that comes from these beans, and how they are selected and roasted.',
                        style: TextStyle(
                          fontSize: 16, // Font size equivalent to CSS
                          color: Colors.grey[300], // Text color
                          height: 1.8, // Line height
                        ),
                      ),
                      SizedBox(height: 16),
                      Text(
                        'The roasting process can greatly impact the flavor and aroma of coffee. A coffee shop may describe how they roast their beans, what equipment they use, and what makes their roast unique.',
                        style: TextStyle(
                          fontSize: 16, // Font size equivalent to CSS
                          color: Colors.grey[300], // Text color
                          height: 1.8, // Line height
                        ),
                      ),
                      SizedBox(height: 20),
                      // Button
                      Container(
                        alignment: Alignment.centerLeft,
                        child: ElevatedButton(
                          onPressed: () {
                            // Handle button press
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.brown, // Button background color
                            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          child: Text(
                            'Learn More',
                            style: TextStyle(
                              fontSize: 16, // Button text size
                              color: Colors.white, // Button text color
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
