//
//  RecipesSortTypes.swift
//  FetchTestAssignment
//
//  Created by piro2 on 12/4/24.
//

enum RecipesSortTypes {
    case name(RecipesAlphabetSortTypes)
    case cuisine(RecipesAlphabetSortTypes)
}

enum RecipesAlphabetSortTypes {
    case aZ, zA
}
