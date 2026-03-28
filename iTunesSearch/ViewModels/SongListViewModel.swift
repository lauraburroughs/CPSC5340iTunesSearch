//
//  SongListViewModel.swift
//  iTunesSearch
//
//  Created by Laura Burroughs on 3/28/26.
//

import Foundation
import Combine

@MainActor
class SongListViewModel: ObservableObject {
    
    @Published var songs: [Song] = []
    @Published var isLoading: Bool = false
    @Published var errorMessage: String? = nil
    
    private let service = iTunesAPIService()
    
    func loadSongs() async {
        isLoading = true
        errorMessage = nil
        
        do {
            let fetchedSongs = try await service.fetchSongs(term: "taylor swift")
            self.songs = fetchedSongs
        } catch {
            self.errorMessage = "Failed to load songs"
            print(error)
        }
        
        isLoading = false
    }
    
}


