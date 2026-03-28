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
            List(viewModel.songs) { song in
                NavigationLink(destination: SongDetailView(song: song)) {
                    VStack(alignment: .leading) {
                        Text(song.trackName)
                            .font(.headline)
                        
                        Text(song.artistName)
                            .font(.subheadline)
                    }
                }
            }
            .navigationTitle("Taylor's Playlist")
        }
        .task {
            await viewModel.loadSongs()
        }
    }
}

#Preview {
    SongListView()
}
