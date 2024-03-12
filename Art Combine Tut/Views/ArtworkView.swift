//
//  ArtworkView.swift
//  Art Combine Tut
//
//  Created by Tlanetzi Chavez Madero on 12/03/24.
//

import SwiftUI

struct ArtworkView: View {
    let artwork: Artwork
    
    var body: some View {
        NavigationLink{
            ArtworkDetailView(artwork: artwork)
        } label: {
            Text(artwork.title)
        }
        
    }
}

#Preview {
    ArtworkView(artwork: previewArtwork)
        .previewLayout(.sizeThatFits)
}
