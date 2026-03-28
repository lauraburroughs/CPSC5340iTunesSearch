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
            
            AsyncImage(url: URL(string: song.artworkUrlLarge)) { image in
                image
                    .resizable()
                    .scaledToFit()
            } placeholder: {
                ProgressView()
            }
            .frame(width: 220, height: 220)
            .cornerRadius(12)
            
            VStack(spacing: 8) {
                Text(song.trackName)
                    .font(.headline)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                
                Text(song.artistName)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                
                Text(song.collectionName)
                    .font(.body)
                    .italic()
                    .foregroundColor(.secondary)
                
            }
        }
        .padding()
        .navigationTitle("Song Details")
        .navigationBarTitleDisplayMode(.inline)
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
