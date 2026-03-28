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
        List(viewModel.songs) { song in
            VStack(alignment: .leading) {
                Text(song.trackName)
                    .font(.subheadline)
            }
        }
        
        .task {
            await viewModel.loadSongs()
        }
    }
}

#Preview {
    SongListView()
}
