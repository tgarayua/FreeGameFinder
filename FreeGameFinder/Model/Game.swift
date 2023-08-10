//
//  Game.swift
//  FreeGameFinder
//
//  Created by Thomas Garayua on 8/9/23.
//

import Foundation

struct Game: Identifiable, Codable {
    let id: Int
    let title: String
    let thumbnail: String
    let shortDescription: String
    let gameUrl: String
    let genre: String
    let platform: String
    let publisher: String
    let developer: String
    let releaseDate: String
    let freetogameProfileUrl: String
    
    enum CodingKeys: String, CodingKey {
        case id
        case title
        case thumbnail
        case shortDescription = "short_description"
        case gameUrl = "game_url"
        case genre
        case platform
        case publisher
        case developer
        case releaseDate = "release_date"
        case freetogameProfileUrl = "freetogame_profile_url"
    }
}
