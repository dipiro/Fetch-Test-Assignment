//
//  View+EmbedInNavigationStack.swift
//  FetchTestAssignment
//
//  Created by piro2 on 12/3/24.
//

import SwiftUI

extension View {
    func embedInNavigation() -> some View {
        NavigationStack {
            self
        }
    }
}
