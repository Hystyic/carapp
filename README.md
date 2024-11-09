Car App

This is a Flutter-based mobile application designed to showcase luxury cars and allow users to browse, share, bookmark, and purchase car ownership slots. The app includes multiple screens such as a main listing page, a product detail page, and a review section for users to leave their feedback.

Features

Browse Luxury Cars: View a list of available luxury cars with detailed information.

Search Functionality: Use the search feature to filter through available cars based on user input.

Car Details: View detailed information about a specific car, including specifications, available slots, and annual maintenance charges.

Bookmark and Share: Users can bookmark their favorite cars or share car details with others.

Review Section: Users can read existing reviews, submit their own reviews, and rate the car.

Project Structure

The project has been modularized to improve readability and maintainability:

main.dart: Entry point of the application, where the MyApp class initializes the app.

components/luxury_car_page.dart: Contains the main layout and functionalities for the car listing page.

components/car_tile.dart: Defines the CarTile widget used to display individual car information.

components/product_detail_page.dart: Provides detailed information about a selected car, including car specifications, reviews, and purchasing options.

components/search_delegate.dart: Implements search functionality for the cars available in the app.

How to Run

Clone the Repository:

git clone <repository-url>

Install Dependencies:

cd luxury_car_app
flutter pub get

Run the App:

flutter run

Make sure you have a connected device or emulator running to see the app in action.

Dependencies

Flutter SDK: Make sure Flutter is installed and correctly set up on your system.

share_plus: Used for sharing car details.

Asset Images: Car images and other assets must be placed in the assets folder and properly referenced in the code.

Assets

The assets folder should contain:

Car images (car_image_0.png, car_image_1.png, etc.)

Reviewer profile pictures and other relevant images.

Add the following entry in pubspec.yaml to ensure assets are included:

  assets:
    - assets/

Screenshots

Main Listing Page: Displays a list of available cars with options to bookmark or share.

Car Details Page: Shows details of the selected car, including reviews and the ability to write a new review.

Search Page: Allows users to filter and search for specific cars.

Contribution

Feel free to fork this repository and create pull requests.

For major changes, please open an issue to discuss what you would like to change.

License

This project is licensed under the MIT License - see the LICENSE file for details.

