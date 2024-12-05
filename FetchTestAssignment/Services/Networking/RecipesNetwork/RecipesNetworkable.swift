//
//  RecipesNetworkable.swift
//  FetchTestAssignment
//
//  Created by piro2 on 12/3/24.
//

import Foundation

protocol RecipesNetworkable: Networkable {
    func fetch<T>(for type: T.Type) async throws -> T where T: Decodable
}
