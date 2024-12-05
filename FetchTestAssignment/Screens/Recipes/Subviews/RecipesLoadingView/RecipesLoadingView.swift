//
//  LoadingView.swift
//  FetchTestAssignment
//
//  Created by piro2 on 12/3/24.
//

import SwiftUI

struct RecipesLoadingView: View {
    var body: some View {
        VStack(spacing: 16) {
            ProgressView()
            Text("Loading...")
        }
    }
}
