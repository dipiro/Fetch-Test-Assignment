//
//  RecipesScreenModelProtocol.swift
//  FetchTestAssignment
//
//  Created by piro2 on 12/4/24.
//

import SwiftUI

protocol RecipesScreenModelProtocol: ObservableObject {
    var state: RecipesScreenStates { get set }
    
    func fetch() async
    func sort(_ type: RecipesSortTypes)
}
