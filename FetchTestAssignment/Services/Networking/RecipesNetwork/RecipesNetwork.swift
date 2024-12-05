//
//  RecipesNetwork.swift
//  FetchTestAssignment
//
//  Created by piro2 on 12/3/24.
//

import Foundation

final class RecipesNetwork: RecipesNetworkable {
    let urlString: String
    
    // MARK: - Private
    private let session: URLSession
    
    // MARK: - Init
    init(urlString: String, session: URLSession = URLSession.shared) {
        self.urlString = urlString
        self.session = session
    }
}

// MARK: - Func
extension RecipesNetwork {
    func fetch<T>(for type: T.Type) async throws -> T where T: Decodable {
        guard let url = URL(string: urlString) else {
            throw AppConstants.Errors.Network.invalidUrl
        }
        
        let (data, response) = try await session.data(from: url)
        
        guard let response = response as? HTTPURLResponse, 200...299 ~= response.statusCode else {
            throw AppConstants.Errors.Network.unexpectedStatusCode
        }
        
        guard let results = try? JSONDecoder().decode(T.self, from: data) else {
            throw AppConstants.Errors.Network.decode
        }
                
        return results
    }
}
