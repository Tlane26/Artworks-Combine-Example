//
//  ContentView.swift
//  Art Combine Tut
//
//  Created by Tlanetzi Chavez Madero on 12/03/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = ArtworkViewModel()
    
    var body: some View {
        NavigationStack{
            List(viewModel.artworks) { artwork in
                ArtworkView(artwork: artwork)
            }
            .navigationTitle("Artworks")
            .onAppear{
                viewModel.fetchArtwork()
            }
        }
    }
}

#Preview {
    ContentView()
}
