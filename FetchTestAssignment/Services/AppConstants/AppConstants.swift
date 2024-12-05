//
//  AppConstants.swift
//  FetchTestAssignment
//
//  Created by piro2 on 12/3/24.
//

import Foundation
import SwiftUI

struct AppConstants {
    
}

// MARK: - Endpoints
extension AppConstants {
    enum Endpoints {
        static let allRecipes = "https://d3jbb8n5wk0qxi.cloudfront.net/recipes.json"
        static let malformedRecipes = "https://d3jbb8n5wk0qxi.cloudfront.net/recipes-malformed.json"
        static let emptyRecipes = "https://d3jbb8n5wk0qxi.cloudfront.net/recipes-empty.json"
    }
}

// MARK: - Errors
extension AppConstants {
    enum Errors {
        enum Network: Error {
            case invalidUrl
            case unexpectedStatusCode
            case decode
            case unknown
        }
        
        enum Cache: Error {
            case invalidURL
            case decodingFailed
            case networkError
        }
    }
}

// MARK: - Icons
extension AppConstants {
    enum Icons {
        case filterCircleFill, warningTriangleFill

        var image: Image {
            switch self {
            case .filterCircleFill:
                Image(systemName: "line.3.horizontal.decrease.circle.fill")
            case .warningTriangleFill :
                Image(systemName: "exclamationmark.triangle.fill")
            }
        }
    }
}
