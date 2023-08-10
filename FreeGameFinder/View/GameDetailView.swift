//
//  GameDetailView.swift
//  FreeGameFinder
//
//  Created by Thomas Garayua on 8/10/23.
//

import SwiftUI

struct GameDetailView: View {
    let game: Game
    @StateObject private var viewModel = GamesViewModel()
    @State private var isShowing = false
    
    
    var body: some View {
        VStack(spacing: 20) {
            AsyncImage(url: URL(string: game.thumbnail))
            
            Spacer()
            
            VStack(alignment: .leading, spacing: 20) {
                
                Text(game.shortDescription)
                    .opacity(isShowing ? 1.0 : 0.0)
                
                Text("Genre:")
                    .font(.subheadline)
                    .opacity(isShowing ? 1.0 : 0.0)
                Text(game.genre)
                    .font(.headline)
                    .opacity(isShowing ? 1.0 : 0.0)
                
                Text("Platform:")
                    .font(.subheadline)
                    .opacity(isShowing ? 1.0 : 0.0)
                Text(game.platform)
                    .font(.headline)
                    .opacity(isShowing ? 1.0 : 0.0)
                
                Text("Publisher:")
                    .font(.subheadline)
                    .opacity(isShowing ? 1.0 : 0.0)
                Text(game.publisher)
                    .font(.headline)
                    .opacity(isShowing ? 1.0 : 0.0)
                
                Text("Developer:")
                    .font(.subheadline)
                    .opacity(isShowing ? 1.0 : 0.0)
                Text(game.developer)
                    .font(.headline)
                    .opacity(isShowing ? 1.0 : 0.0)
            }
            .padding(.all)
            .background(Color.white)
            .cornerRadius(15)
            .shadow(radius: 15)
            .navigationTitle(game.title)
            .ignoresSafeArea(edges: .all)
            .opacity(isShowing ? 1.0 : 0.0)
            
            Spacer()
        }
        .onAppear {
            withAnimation(.easeIn(duration: 1)) {
                isShowing = true
            }
        }
        .padding(.all)
    }
}

//struct GameDetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        GameDetailView(game: Game(id: 540,
//                                  title: "Overwatch 2",
//                                  thumbnail: "https://www.freetogame.com/g/540/thumbnail.jpg",
//                                  shortDescription: "A hero-focused first-person team shooter from Blizzard Entertainment.",
//                                  gameUrl: "https://www.freetogame.com/open/overwatch-2",
//                                  genre: "Shooter",
//                                  platform: "PC (Windows)",
//                                  publisher: "Activision Blizzard",
//                                  developer: "Blizzard Entertainment",
//                                  releaseDate: "2022-10-04",
//                                  freetogameProfileUrl: "https://www.freetogame.com/overwatch-2"
//                                 ))
//    }
//}
