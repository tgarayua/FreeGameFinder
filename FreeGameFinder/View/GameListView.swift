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
                    List(viewModel.games, id: \.id) { game in
                        NavigationLink(destination: GameDetailView(game: game)) {
                            Text(game.title)
                        }
                    }
                    .padding(.top, -7)
                }
            }
            .navigationTitle("Free Game Finder")
            .ignoresSafeArea(edges: .bottom)
            .onAppear {
                viewModel.fetchGames()
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct GameListView_Previews: PreviewProvider {
    static var previews: some View {
        GameListView()
    }
}
