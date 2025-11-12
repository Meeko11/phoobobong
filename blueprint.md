# Project Blueprint

## Overview

This is a Flutter-based photo gallery application that allows users to register, log in, and upload images to a personal gallery. The app is integrated with Firebase for authentication, cloud storage, and database services.

## Features

- **User Authentication**: Users can create an account and log in using email and password.
- **Photo Gallery**: Authenticated users can view their uploaded photos in a grid layout.
- **Image Upload**: Users can upload images from their device's gallery, which are then stored in Firebase Storage.
- **Cloud Firestore**: Photo metadata, such as image URLs and timestamps, is stored in a Firestore database.

## Project Structure

- `lib/main.dart`: The main entry point of the application.
- `lib/router.dart`: Defines the application's routing and navigation logic using `go_router`.
- `lib/app_theme.dart`: Contains the theme data for the app, including color schemes and typography.
- `lib/services/auth_service.dart`: Manages user authentication state and interactions with Firebase Authentication.
- `lib/services/storage_service.dart`: Handles image uploads to Firebase Storage.
- `lib/services/firestore_service.dart`: Manages database interactions with Cloud Firestore.
- `lib/screens/home_screen.dart`: The main screen where users can view their photo gallery and upload new images.
- `lib/screens/login_screen.dart`: The screen where users can log in to their accounts.
- `lib/screens/register_screen.dart`: The screen where users can create a new account.
- `lib/widgets/empty_photos.dart`: A widget that is displayed when the user has not uploaded any photos.