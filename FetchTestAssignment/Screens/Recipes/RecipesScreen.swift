//
//  ContentView.swift
//  FetchTestAssignment
//
//  Created by piro2 on 12/3/24.
//

import SwiftUI

struct RecipesScreen<T: RecipesScreenModelProtocol>: View {
    @StateObject private var viewModel: T
        
    // MARK: - Init
    init(_ viewModel: T) {
        self._viewModel = StateObject(wrappedValue: viewModel)
    }
    
    // MARK: - Body
    var body: some View {
        List {
            switch viewModel.state {
            case .start:
                RecipesLoadingView()
                    .task(appearPerform)
            case .success(let recipes) where recipes.isEmpty:
                RecipesEmptyView()
                    .listRowSeparator(.hidden)
            case .success(let recipes):
                ForEach(recipes) { recipe in
                    RecipeCell(recipe)
                        .listRowSeparator(.hidden)
                }
            case .failure(let error):
                RecipesFailureView(error: error)
                    .listRowSeparator(.hidden)
            }
        }
        .listStyle(.inset)
        .refreshable(action: refreshAction)
        .toolbar(content: toolbar)
        .navigationTitle("Recipes")
        .embedInNavigation()
    }
}

// MARK: - Private
private extension RecipesScreen {
    @ToolbarContentBuilder func toolbar() -> some ToolbarContent {
        ToolbarItem(placement: .topBarTrailing) {
            RecipesSortMenu(onEvent: viewModel.sort(_:))
        }
    }
    
    // MARK: - Func
    @Sendable func appearPerform() async {
        await viewModel.fetch()
    }
    
    @Sendable func refreshAction() async {
        await viewModel.fetch()
    }
}

// MARK: - Preview
#Preview {
    RecipesScreen(RecipesScreenModel())
}
