//
//  iTunesAPIService.swift
//  iTunesSearch
//
//  Created by Laura Burroughs on 3/28/26.
//

import Foundation

class iTunesAPIService {
    
    func fetchSongs(term: String) async throws -> [Song] {
        let query = term.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) ?? term
        let urlString = "https://itunes.apple.com/search?term=\(query)&entity=song&limit=25"
                guard let url = URL(string: urlString) else {
                    throw URLError(.badURL)
                }
        let (data, _) = try await URLSession.shared.data(from: url)
        let decoded = try JSONDecoder().decode(SearchResponse.self, from: data)
        return decoded.results
    }
}





