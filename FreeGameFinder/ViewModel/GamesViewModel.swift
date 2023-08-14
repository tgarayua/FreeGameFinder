//
//  GamesViewModel.swift
//  FreeGameFinder
//
//  Created by Thomas Garayua on 8/9/23.
//

import Foundation

class GamesViewModel: ObservableObject {
    @Published var games: [Game] = []
    @Published var searchedGame = []
    @Published var searchQuary = ""
    
    var filteredGames: [Game] {
        guard !searchQuary.isEmpty else {
            return games
        }
        return games.filter { $0.title.contains(searchQuary)}
    }
    
    func fetchGames() {
        NetworkManager.shared.fetchFreeGames { [weak self] games in
            DispatchQueue.main.async {
                self?.games = games ?? []
            }
        }
    }
}
