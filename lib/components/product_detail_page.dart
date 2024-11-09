import 'package:flutter/material.dart';

class ProductDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mercedes-Benz E-Class Exclusive E 220d'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        actions: [
          IconButton(icon: Icon(Icons.share), onPressed: () {}),
          IconButton(icon: Icon(Icons.bookmark_border), onPressed: () {}),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200,
              width: double.infinity,
              color: Colors.grey[200],
              child: Center(
                child: Image.asset('assets/car_image.png'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Mercedes-Benz E-Class Exclusive E 220d', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Icon(Icons.location_on, size: 16),
                      SizedBox(width: 4),
                      Text('Location: Bangalore'),
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Icon(Icons.monetization_on, size: 16),
                      SizedBox(width: 4),
                      Text('AMC Charges Per Annum: ₹1,500'),
                    ],
                  ),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text('Available Slots', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
                          Text('100', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color(0xFFB68D40))),
                        ],
                      ),
                      Column(
                        children: [
                          Text('Total Slots', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
                          Text('200', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color(0xFFB68D40))),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  DefaultTabController(
                    length: 3,
                    child: Column(
                      children: [
                        TabBar(
                          labelColor: Colors.black,
                          unselectedLabelColor: Colors.grey,
                          indicatorColor: Color(0xFFB68D40),
                          tabs: [
                            Tab(text: 'Car details'),
                            Tab(text: 'Description'),
                            Tab(text: 'Review'),
                          ],
                        ),
                        Container(
                          height: 200,
                          child: TabBarView(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(16.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Engine Type: 2.0L I4 Turbo', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
                                    SizedBox(height: 8),
                                    Text('Horsepower: 255 hp', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
                                    SizedBox(height: 8),
                                    Text('Torque: 273 lb-ft', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
                                    SizedBox(height: 8),
                                    Text('Fuel Efficiency: 22 MPG city / 30 MPG highway', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
                                    SizedBox(height: 8),
                                    Text('0-60 mph: 6.1 seconds', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
                                    SizedBox(height: 8),
                                    Text('Top Speed: 130 mph', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
                                  ],
                                ),
                              ), // Placeholder for Car details
                              Center(child: Text('Description content')), // Placeholder for Description
                              Center(child: Text('Review content')), // Placeholder for Review
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 16),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFB68D40),
                      padding: EdgeInsets.symmetric(vertical: 16.0),
                    ),
                    onPressed: () {},
                    child: Center(child: Text('Buy Ownership', style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold))),
                  ),
                  SizedBox(height: 24),
                  Text('Review', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('assets/reviewer_image.png'), // Placeholder image
                    ),
                    title: Text('Lorem Ipsum'),
                    subtitle: Text('Lorem Ipsum Dolor Sit Amet Consectetur. Viverra Laoreet Auctor Vel Nibh Magna Facilisis. Dictum Et Gravida Bibendum Tincidunt Fermentum Ac Vel Curabitur.'),
                  ),
                  SizedBox(height: 24),
                  Text('Write your review', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  TextField(
                    decoration: InputDecoration(hintText: 'Your Name'),
                  ),
                  TextField(
                    decoration: InputDecoration(hintText: 'Your Email'),
                  ),
                  TextField(
                    decoration: InputDecoration(hintText: 'Your Review Here!'),
                    maxLines: 4,
                  ),
                  SizedBox(height: 16),
                  Row(
                    children: [
                      Text('Rate us', style: TextStyle(fontSize: 18)),
                      Spacer(),
                      Icon(Icons.star_border, color: Colors.orange),
                      Icon(Icons.star_border, color: Colors.orange),
                      Icon(Icons.star_border, color: Colors.orange),
                      Icon(Icons.star_border, color: Colors.orange),
                      Icon(Icons.star_border, color: Colors.orange),
                    ],
                  ),
                  SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      padding: EdgeInsets.symmetric(vertical: 16.0),
                    ),
                    child: Text('Submit Review', style: TextStyle(color: Colors.white, fontSize: 18)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}