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
        GeometryReader {_ in
            ScrollView {
                VStack(alignment: .center, spacing: 20) {
                    AsyncImage(url: URL(string: game.thumbnail))
                        .opacity(isShowing ? 1.0 : 0.0)
                        .padding(.top, 25)
                    
                    
                    Text(game.shortDescription)
                        .fixedSize(horizontal: false, vertical: true)
                        .padding()
                        .opacity(isShowing ? 1.0 : 0.0)
                    
                    VStack(alignment: .leading, spacing: 20) {
                        Text("Genre:")
                            .font(.headline)
                            .opacity(isShowing ? 1.0 : 0.0)
                        Text(game.genre)
                            .font(.subheadline)
                            .opacity(isShowing ? 1.0 : 0.0)
                        
                        Text("Platform:")
                            .font(.headline)
                            .opacity(isShowing ? 1.0 : 0.0)
                        Text(game.platform)
                            .font(.subheadline)
                            .opacity(isShowing ? 1.0 : 0.0)
                        
                        Text("Publisher:")
                            .font(.headline)
                            .opacity(isShowing ? 1.0 : 0.0)
                        Text(game.publisher)
                            .font(.subheadline)
                            .opacity(isShowing ? 1.0 : 0.0)
                        
                        Text("Developer:")
                            .font(.headline)
                            .opacity(isShowing ? 1.0 : 0.0)
                        Text(game.developer)
                            .font(.subheadline)
                            .opacity(isShowing ? 1.0 : 0.0)
                        
                        Link("FreeToGame Detail Link", destination: URL(string: game.freetogameProfileUrl)!)
                            .font(.headline)
                            .opacity(isShowing ? 1.0 : 0.0)
                        
                        Link("Download \(game.title) Now!", destination: URL(string: game.gameUrl)!)
                            .font(.headline)
                            .opacity(isShowing ? 1.0 : 0.0)
                    }
                    .padding(.all)
                    .background(Color.gray)
                    .cornerRadius(15)
                    .shadow(radius: 15)
                    .ignoresSafeArea(edges: .all)
                    .opacity(isShowing ? 1.0 : 0.0)
                    
                }
                Spacer()
            }
        }
        .navigationTitle(game.title)
        .onAppear {
            withAnimation(.easeIn(duration: 1)) {
                isShowing = true
            }
        }
        .background(ignoresSafeAreaEdges: .bottom)
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
