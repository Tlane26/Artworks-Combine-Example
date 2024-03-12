//
//  ArtworkDetailView.swift
//  Art Combine Tut
//
//  Created by Tlanetzi Chavez Madero on 12/03/24.
//

import SwiftUI

struct ArtworkDetailView: View {
    let artwork: Artwork
    
    var body: some View {
        ScrollView {
            artworkImageView
            
            Text(artwork.title)
                .font(.title)
                .padding()
        }
        .navigationTitle("Artwork Details")
        .navigationBarTitleDisplayMode(.inline)
    }
    
    @ViewBuilder var artworkImageView: some View {
        if let imageID = artwork.imageId,
           let imageUrl = URL(string: "https://www.artic.edu/iiif/2/\(imageID)/full/843,/0/default.jpg") {
            AsyncImage(url: imageUrl){ image in
                image.resizable()
                     .aspectRatio(contentMode: .fit)
            } placeholder: {
                ProgressView()
            }
        }
        else{
            Text("Image is not available")
        }
    }
}

#Preview {
    ArtworkDetailView(artwork: previewArtwork)
}
