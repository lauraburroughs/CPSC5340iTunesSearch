//
//  Song.swift
//  iTunesSearch
//
//  Created by Laura Burroughs on 3/28/26.
//

import Foundation

struct Song: Identifiable, Codable {
    let trackId: Int
    
    var id: Int { trackId }
    
    // Requesting higher-res images for the detail view by changing the artwork URL pattern
    var artworkUrlLarge: String {
        artworkUrl100.replacingOccurrences(of: "100x100bb", with: "600x600bb")
    }
    
    let trackName: String
    let artistName: String
    let collectionName: String
    let artworkUrl100: String
    let previewURL: String?

}





