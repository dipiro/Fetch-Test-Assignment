//
//  Recipe.swift
//  FetchTestAssignment
//
//  Created by piro2 on 12/3/24.
//

import Foundation

struct Recipe: Identifiable, Decodable {
    let id: UUID
    let name: String
    let cuisine: String
    let photoURLLarge: String?
    let photoURLSmall: String?
    let sourceURL: String?
    let youtubeURL: String?

    enum CodingKeys: String, CodingKey {
        case cuisine, name
        case photoURLLarge = "photo_url_large"
        case photoURLSmall = "photo_url_small"
        case sourceURL = "source_url"
        case id = "uuid"
        case youtubeURL = "youtube_url"
    }
}

// MARK: -
extension Recipe {
    var displayPhotoURLLarge: URL? {
        guard let photoURLLarge else { return nil }
        
        return URL(string: photoURLLarge)
    }
    
    var displayPhotoURLSmall: URL? {
        guard let photoURLSmall else { return nil }
        
        return URL(string: photoURLSmall)
    }
}
