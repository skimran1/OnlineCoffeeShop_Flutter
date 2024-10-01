import 'package:flutter/material.dart';

class ReviewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Customer Reviews'),
        backgroundColor: Colors.brown,
      ),
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          children: reviews.map((review) => ReviewBox(review)).toList(),
        ),
      ),
    );
  }

  // Sample data for reviews
  final List<Map<String, dynamic>> reviews = [
    {
      'quote': 'assets/images/quote-img.png',
      'text': 'I recently visited this coffee shop and I have to say, I was blown away by the quality of their coffee. The latte I ordered was perfectly balanced, with just the right amount of sweetness and a smooth, creamy texture. You can tell that they take their coffee seriously here, as the baristas were knowledgeable and passionate about their craft.',
      'userImage': 'assets/images/pic-4.png',
      'userName': 'Shah Rukh Khan',
      'rating': 4.5,
    },
    {
      'quote': 'assets/images/quote-img.png',
      'text': 'I absolutely love this coffee shop! Their coffee is always fresh and delicious, and they offer a great variety of drinks to choose from. The staff is friendly and welcoming, and they always take the time to explain their menu and answer any questions I have. I especially love their latte art - it always makes my day. Great coffee, friendly staff, and cozy atmosphere - my new favorite spot!',
      'userImage': 'assets/images/pic-5.png',
      'userName': 'Shaikh Hamdan',
      'rating': 4.5,
    },
    {
      'quote': 'assets/images/quote-img.png',
      'text': 'I stumbled upon this coffee shop while exploring the area, and I\'m so glad I did! The coffee is hands down some of the best I\'ve ever had. They roast their own beans, and you can tell that they take pride in their craft. The staff is also incredibly friendly and knowledgeable - they took the time to explain the different roasts and brewing methods to me.',
      'userImage': 'assets/images/pic-6.png',
      'userName': 'Shaikh Imran',
      'rating': 4.5,
    },
  ];
}

class ReviewBox extends StatelessWidget {
  final Map<String, dynamic> review;

  ReviewBox(this.review);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15.0),
      padding: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: Colors.grey[800],
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.brown, width: 1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            review['quote'],
            height: 20,
            width: 20,
          ),
          SizedBox(height: 10),
          Text(
            review['text'],
            style: TextStyle(
              fontSize: 16,
              color: Colors.white,
              height: 1.5,
            ),
          ),
          SizedBox(height: 10),
          Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(review['userImage']),
                radius: 35,
              ),
              SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      review['userName'],
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 5),
                    Row(
                      children: List.generate(5, (index) {
                        return Icon(
                          Icons.star,
                          color: index < review['rating'] ? Colors.amber : Colors.white54,
                          size: 20,
                        );
                      }),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
