//
//  FetchTestAssignmentTests.swift
//  FetchTestAssignmentTests
//
//  Created by piro2 on 12/4/24.
//

import Testing
@testable import FetchTestAssignment
import Foundation

struct FetchTestAssignmentTests {
    let cacheManager = ImageCacheManager()
    
    @Test func emptyRecipeTest() async throws {
        let network = RecipesNetwork(urlString: AppConstants.Endpoints.emptyRecipes)
        let viewModel = RecipesScreenModel(network)
        
        await viewModel.fetch()
        
        if case .success(let items) = viewModel.state {
            #expect(items.isEmpty)
        }
    }
    
    @Test func successRecipeTest() async throws {
        let network = RecipesNetwork(urlString: AppConstants.Endpoints.allRecipes)
        let viewModel = RecipesScreenModel(network)
        
        await viewModel.fetch()
        
        if case .success(let items) = viewModel.state {
            #expect(items.isNotEmpty)
        }
    }
    
    @Test func malformedRecipeTest() async throws {
        let network = RecipesNetwork(urlString: AppConstants.Endpoints.malformedRecipes)
        let viewModel = RecipesScreenModel(network)
        
        await viewModel.fetch()
        
        if case .failure(_) = viewModel.state {
            #expect(true)
        }
    }
    
    // MARK: - Cache Tests
    @Test func loadCachedImageTestThree() async {
        if let url = Preview.recipe.displayPhotoURLLarge {
             _ = try? await cacheManager.fetchAndCacheImage(from: url)
                        
            let cachedImage = await cacheManager.loadCachedImage(from: url)
            #expect(cachedImage != nil)
        }
    }
}
