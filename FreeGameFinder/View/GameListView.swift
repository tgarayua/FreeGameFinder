//
//  GameListView.swift
//  FreeGameFinder
//
//  Created by Thomas Garayua on 8/10/23.
//

import SwiftUI

struct GameListView: View {
    @StateObject private var viewModel = GamesViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                if viewModel.games.isEmpty {
                    ProgressView("Loading Games...")
                } else {
                    VStack {
                        SearchBar(text: $viewModel.searchQuary)
                        
                        List(viewModel.filteredGames, id: \.id) { game in
                            NavigationLink(destination: GameDetailView(game: game)) {
                                
                                GameTileView(game: game)
                                    .padding()
                                
                            }
                        }
                        .padding(.top, -7)
                    }
                }
            }
            .navigationTitle("Free Game Finder")
            .onAppear {
                viewModel.fetchGames()
            }
        }
    }
}

struct GameListView_Previews: PreviewProvider {
    static var previews: some View {
        GameListView()
    }
}
