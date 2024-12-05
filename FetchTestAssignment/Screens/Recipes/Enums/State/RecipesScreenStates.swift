//
//  RecipesScreenStates.swift
//  FetchTestAssignment
//
//  Created by piro2 on 12/4/24.
//

enum RecipesScreenStates {
    case start
    case success([Recipe])
    case failure(AppConstants.Errors.Network)
}
