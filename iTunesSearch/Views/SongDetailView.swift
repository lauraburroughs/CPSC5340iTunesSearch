//
//  SongDetailView.swift
//  iTunesSearch
//
//  Created by Laura Burroughs on 3/28/26.
//

import SwiftUI

struct SongDetailView: View {
    
    let song: Song
    
    var body: some View {
        VStack(spacing: 20) {
            
            Text(song.trackName)
                .font(.title)
                .fontWeight(.bold)
            
            Text(song.artistName)
                .font(.title2)
            
            Text("Album: "); Text(song.collectionName).italic()
                .font(.body)
            
        }
        .padding()
        .navigationTitle("Song Details")
    }
}

#Preview {
    SongDetailView(song: Song(
        trackId: 1,
        trackName: "Sample Song",
        artistName: "Sample Artist",
        collectionName: "Sample Album",
        artworkUrl100: "",
        previewURL: nil
    ))
}
