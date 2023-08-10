//
//  NetworkManager.swift
//  FreeGameFinder
//
//  Created by Thomas Garayua on 8/9/23.
//

import Foundation

class NetworkManager {
    static let shared = NetworkManager()
    private let freeGamesUrlString = "https://www.freetogame.com/api/games"
    private init() {}
    
    func fetchFreeGames(completion: @escaping ([Game]?) -> Void) {
        guard let url = URL(string: freeGamesUrlString) else {
            print("Error: Unable to find freeGamesUrlString")
            completion(nil)
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, _, error in
            if let error = error {
                print("Error fetching Games in URLSession: ", error.localizedDescription)
                completion(nil)
                return
            }
            
            if let data = data {
                do {
                    let decoder = JSONDecoder()
                    let games = try decoder.decode([Game].self, from: data)
                    completion(games)
                } catch {
                    print("Catch statement triggered in data")
                    completion(nil)
                }
            } else {
                completion(nil)
            }
        }.resume()
    }
}
