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
    
    let trackName: String
    let artistName: String
    let collectionName: String
    let artworkUrl100: String
    let previewURL: String?

}





