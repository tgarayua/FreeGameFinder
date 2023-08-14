//
//  GameTileView.swift
//  FreeGameFinder
//
//  Created by Thomas Garayua on 8/10/23.
//

import SwiftUI

struct GameTileView: View {
    let game: Game
    
    var body: some View {
        VStack {
            VStack(spacing: 20) {
                AsyncImage(url: URL(string: game.thumbnail))
                    .scaledToFit()
                    .frame(maxWidth: UIScreen.main.bounds.width - 75)
                
                VStack(alignment: .leading, spacing: 5) {
                    Text(game.title)
                    Text(game.shortDescription)
                        .font(.caption)
                }
            }
            .padding([.leading, .bottom], 17)
            
            .cornerRadius(15)
            .shadow(radius: 15)
//            .ignoresSafeArea(edges: .all)
        }
        .padding(-20)
            
    }

}

struct GameTileView_Previews: PreviewProvider {
    static var previews: some View {
        GameTileView(game: Game(id: 540, title: "Overwatch 2", thumbnail: "https://www.freetogame.com/g/540/thumbnail.jpg", shortDescription: "A hero-focused first-person team shooter from Blizzard Entertainment.", gameUrl: "https://www.freetogame.com/open/overwatch-2", genre: "Shooter", platform: "PC (Windows)", publisher: "Activision Blizzard", developer: "Blizzard Entertainment", releaseDate: "2022-10-04", freetogameProfileUrl: "https://www.freetogame.com/overwatch-2"))
    }
}
