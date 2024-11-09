# Car App

This is a Flutter-based mobile application designed to showcase cars and allow users to browse, share, bookmark, and purchase car ownership slots. The app includes multiple screens, such as a main listing page, a product detail page, and a review section for user feedback.

## Features

- **Browse Luxury Cars**: View a list of available luxury cars with detailed information.
- **Search Functionality**: Filter through available cars based on user input using the search feature.
- **Car Details**: Access in-depth information about a car, including specifications, available slots, and annual maintenance charges.
- **Bookmark and Share**: Bookmark favorite cars or share car details with others.
- **Review Section**: Read existing reviews, submit personal reviews, and rate the car.

## Project Structure

The project is modularized to improve readability and maintainability:

- **main.dart**: Entry point of the application where the `MyApp` class initializes the app.
- **components/luxury_car_page.dart**: Contains the main layout and functionalities for the car listing page.
- **components/car_tile.dart**: Defines the `CarTile` widget used to display individual car information.
- **components/product_detail_page.dart**: Provides detailed information about a selected car, including specifications, reviews, and purchasing options.
- **components/search_delegate.dart**: Implements search functionality for the cars available in the app.
