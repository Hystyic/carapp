import 'package:flutter/material.dart';

class CarSearchDelegate extends SearchDelegate {
  final List<String> carList;

  CarSearchDelegate(this.carList);

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    if (query.isEmpty) {
      return Center(
        child: Text('Please enter a search term'),
      );
    }
    // Filter and display relevant results based on the query
    final filteredCars = carList.where((car) => car.toLowerCase().contains(query.toLowerCase())).toList();

    return ListView.builder(
      itemCount: filteredCars.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(filteredCars[index]),
          onTap: () {
            // Implement onTap action for search results here
          },
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestions = query.isEmpty
        ? [
            'Mercedes E-Class',
            'Mercedes S-Class',
            'Audi Q7',
          ]
        : carList.where((car) => car.toLowerCase().contains(query.toLowerCase())).toList();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text('Recent Searches', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: suggestions.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0),
                child: ListTile(
                  title: Text(suggestions[index]),
                  trailing: IconButton(
                    icon: Icon(Icons.clear),
                    onPressed: () {},
                  ),
                  onTap: () {
                    query = suggestions[index];
                    showResults(context);
                  },
                ),
              );
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text('Perfect for you', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        ),
        SizedBox(
          height: 300,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: GridView.count(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              crossAxisCount: 2,
              crossAxisSpacing: 8.0,
              mainAxisSpacing: 8.0,
              children: List.generate(5, (index) {
                return Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      image: AssetImage('assets/car_image_$index.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              }),
            ),
          ),
        ),
      ],
    );
  }
}
