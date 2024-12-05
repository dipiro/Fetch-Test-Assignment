//
//  Preview.swift
//  FetchTestAssignment
//
//  Created by piro2 on 12/3/24.
//

import Foundation

struct Preview {
    static let recipe: Recipe = .init(
        id: UUID(uuidString: "0c6ca6e7-e32a-4053-b824-1dbf749910d8") ?? .init(),
        name: "Apam Balik",
        cuisine: "MalaysiMalaysianan",
        photoURLLarge: "https://d3jbb8n5wk0qxi.cloudfront.net/photos/b9ab0071-b281-4bee-b361-ec340d405320/large.jpg",
        photoURLSmall: "https://d3jbb8n5wk0qxi.cloudfront.net/photos/b9ab0071-b281-4bee-b361-ec340d405320/small.jpg",
        sourceURL: "https://www.nyonyacooking.com/recipes/apam-balik~SJ5WuvsDf9WQ",
        youtubeURL: "https://www.youtube.com/watch?v=6R8ffRRJcrg"
    )
}
