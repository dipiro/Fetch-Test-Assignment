//
//  FetchTestAssignmentApp.swift
//  FetchTestAssignment
//
//  Created by piro2 on 12/3/24.
//

import SwiftUI

@main
struct FetchTestAssignmentApp: App {
    var body: some Scene {
        WindowGroup {
            RecipesScreen(RecipesScreenModel())
                .preferredColorScheme(.light)
        }
    }
}
