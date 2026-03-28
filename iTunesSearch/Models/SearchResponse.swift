//
//  SearchResponse.swift
//  iTunesSearch
//
//  Created by Laura Burroughs on 3/28/26.
//

import Foundation

struct SearchResponse: Codable {
    let resultCount: Int
    let results: [Song]
}





