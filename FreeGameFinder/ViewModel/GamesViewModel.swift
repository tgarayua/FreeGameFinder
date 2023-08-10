//
//  GamesViewModel.swift
//  FreeGameFinder
//
//  Created by Thomas Garayua on 8/9/23.
//

import Foundation

class GamesViewModel: ObservableObject {
    @Published var games: [Game] = []
    
    func fetchGames() {
        NetworkManager.shared.fetchFreeGames { [weak self] games in
            DispatchQueue.main.async {
                self?.games = games ?? []
            }
        }
    }
}
