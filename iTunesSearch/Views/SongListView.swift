//
//  SongListView.swift
//  iTunesSearch
//
//  Created by Laura Burroughs on 3/28/26.
//

import SwiftUI

struct SongListView: View {
    
    @StateObject private var viewModel = SongListViewModel()
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(viewModel.songs) { song in
                    NavigationLink(destination: SongDetailView(song: song)) {
                        HStack {
                            AsyncImage(url: URL(string: song.artworkUrl100)) { image in
                                image
                                    .resizable()
                                    .scaledToFill()
                            } placeholder: {
                                ProgressView()
                            }
                            .frame(width: 60, height: 60)
                            .cornerRadius(8)
                            .clipped()
                            
                            VStack(alignment: .leading) {
                                Text(song.trackName)
                                    .font(.headline)
                                
                                Text(song.artistName)
                                    .font(.subheadline)
                                    .foregroundColor(.secondary)
                            }
                        }
                    }
                }
            }
            .navigationTitle("Taylor's Playlist")
            .task {
                await viewModel.loadSongs()
            }
        }
    }
}


#Preview {
    SongListView()
}
