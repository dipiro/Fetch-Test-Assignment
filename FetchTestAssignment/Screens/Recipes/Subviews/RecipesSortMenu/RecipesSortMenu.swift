//
//  RecipesSortMenu.swift
//  FetchTestAssignment
//
//  Created by piro2 on 12/4/24.
//

import SwiftUI

struct RecipesSortMenu: View {
    var onEvent: (RecipesSortTypes) -> ()
    
    // MARK: - Body
    var body: some View {
        Menu {
            Button("Name: A-Z") {
                onEvent(.name(.aZ))
            }
            Button("Name: Z-A") {
                onEvent(.name(.zA))
            }
            
            Divider()
            
            Button("Cuisine: A-Z") {
                onEvent(.cuisine(.aZ))
            }
            Button("Cuisine: Z-A") {
                onEvent(.cuisine(.zA))
            }
        } label: {
            AppConstants.Icons.filterCircleFill.image
        }
    }
}
