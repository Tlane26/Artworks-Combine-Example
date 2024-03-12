//
//  ArtWork.swift
//  Art Combine Tut
//
//  Created by Tlanetzi Chavez Madero on 12/03/24.
//

import Foundation

struct ArtworkDataResponse: Decodable {
    let data: [Artwork]
}

struct Artwork: Decodable, Identifiable {
    let id: Int
    let title: String
    let imageId: String?
}

let previewArtwork = Artwork(id: 16487, title: "The Bay of Marseille, Seen From L\'Estaque", imageId: "d4ca6321-8656-3d3f-a362-2ee297b2b813")

