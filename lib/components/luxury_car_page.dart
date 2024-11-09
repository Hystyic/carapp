import 'package:flutter/material.dart';
import 'car_tile.dart';
import 'product_detail_page.dart';
import 'search_delegate.dart';

class LuxuryCarPage extends StatelessWidget {
  final List<String> carList = ['Car 1', 'Car 2', 'Car 3', 'Car 4', 'Car 5'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text('Luxury Car', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            if (Navigator.of(context).canPop()) {
              Navigator.of(context).pop();
            }
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.share, color: Colors.black),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.bookmark_border, color: Colors.black),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.search, color: Colors.black),
            onPressed: () {
              showSearch(context: context, delegate: CarSearchDelegate(carList));
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('${carList.length} of 150 options showing in your location'),
                Chip(
                  label: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.filter_alt),
                      SizedBox(width: 4.0),
                      Text('Filters'),
                    ],
                  ),
                )
              ],
            ),
          ),
          Wrap(
            spacing: 8.0,
            children: [
              Chip(label: Text('Popularity')),
              Chip(label: Text('New Arrivals')),
              Chip(label: Text('High-Performance')),
            ],
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: ListView.builder(
                itemCount: carList.length,
                itemBuilder: (context, index) {
                  return CarTile();
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}