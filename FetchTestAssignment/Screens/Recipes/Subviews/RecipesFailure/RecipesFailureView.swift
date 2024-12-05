//
//  FailureView.swift
//  FetchTestAssignment
//
//  Created by piro2 on 12/3/24.
//

import SwiftUI

struct RecipesFailureView: View {
    var error: AppConstants.Errors.Network
    
    // MARK: - Body
    var body: some View {
        VStack(spacing: 16) {
            Text("Sorry, something went wrong")
                .font(.title)
                .frame(maxWidth: .infinity, alignment: .center)
            Text(error.localizedDescription)
                .font(.callout)
                .frame(maxWidth: .infinity, alignment: .center)
        }
        .multilineTextAlignment(.center)
    }
}
