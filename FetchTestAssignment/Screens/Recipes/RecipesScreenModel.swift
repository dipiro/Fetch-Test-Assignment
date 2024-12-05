//
//  RecipesScreenModel.swift
//  FetchTestAssignment
//
//  Created by piro2 on 12/3/24.
//

import SwiftUI

final class RecipesScreenModel: RecipesScreenModelProtocol {
    @Published var state: RecipesScreenStates
    
    // MARK: - Private
    private var recipes: [Recipe]
    private var sortType: RecipesSortTypes
    private let network: RecipesNetworkable
    
    // MARK: - Init
    init(_ network: RecipesNetworkable = RecipesNetwork.init(urlString: AppConstants.Endpoints.allRecipes)) {
        self.state = .start
        self.network = network
        self.recipes = []
        self.sortType = .name(.aZ)
    }
}

// MARK: - Func
extension RecipesScreenModel {
    @MainActor func fetch() async {
        do {
            let recipeList = try await network.fetch(for: RecipeList.self)
            recipes = recipeList.recipes
            
            doSort()
            updateState()
        } catch let error as AppConstants.Errors.Network  {
            state = .failure(error)
        } catch {
            state = .failure(.unknown)
        }
    }
    
    func sort(_ type: RecipesSortTypes) {
        sortType = type
        
        doSort()
        updateState()
    }
}

// MARK: - Private Func
private extension RecipesScreenModel {
    func doSort() {
        recipes.sort {
            switch sortType {
            case .name(.aZ): return $0.name < $1.name
            case .name(.zA): return $0.name > $1.name
            case .cuisine(.aZ): return $0.cuisine < $1.cuisine
            case .cuisine(.zA): return $0.cuisine > $1.cuisine
            }
        }
    }
    
    func updateState() {
        state = .success(recipes)
    }
}

