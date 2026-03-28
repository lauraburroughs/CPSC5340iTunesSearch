# iTunesSearch App

## Overview
iTunesSearch is a simple SwiftUI iOS application that allows users to browse and view song information using the iTunes Search API. The app demonstrates the MVVM (Model-View-ViewModel) architecture and dynamic data loading from a public API.

Users can view a list of songs, see basic metadata, and navigate to a detail screen for additional information.

This app was built using concepts from CPSC 5340.

---

## Features

- Fetches live song data from the iTunes Search API
- Displays results in a scrollable list
- Shows album artwork, song title, and artist name
- Navigates to a detail view for each song
- Displays larger album artwork and additional song details
- Supports asynchronous image loading

---

## Architecture

This project follows the **MVVM (Model-View-ViewModel)** pattern:

### Model
- `Song.swift`
- Represents decoded data from the iTunes API

### ViewModel
- `SongListViewModel.swift`
- Handles API requests and manages song data
- Uses async/await for network calls

### Views
- `SongListView.swift`
- Displays list of songs and handles navigation

- `SongDetailView.swift`
- Displays detailed information for a selected song including album artwork

---

## API Used

This app uses the public iTunes Search API: https://itunes.apple.com/search?parameterkeyvalue
