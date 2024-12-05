//
//  RecipeCell.swift
//  FetchTestAssignment
//
//  Created by piro2 on 12/3/24.
//

import SwiftUI

struct RecipeCell: View {
    private var recipe: Recipe
    
    // MARK: - Init
    init(_ recipe: Recipe) {
        self.recipe = recipe
    }
    
    // MARK: - Body
    var body: some View {
        ZStack(alignment: .bottomLeading) {
            asyncImage
            gradient
            description
        }
        .clipShape(.rect(cornerRadius: Const.bgCornerRadius))
        .clipped()
    }
}

// MARK: - Private
private extension RecipeCell {
    var description: some View {
        VStack {
            Text(recipe.cuisine)
                .font(.callout)
                .fontWeight(.medium)
                .frame(maxWidth: .infinity, alignment: .leading)
            Text(recipe.name)
                .font(.title)
                .fontWeight(.bold)
                .frame(maxWidth: .infinity, alignment: .leading)
        }
        .foregroundStyle(.white)
        .padding([.leading, .bottom, .trailing])
    }
    
    var asyncImage: some View {
        CachedAsyncImage(recipe.displayPhotoURLLarge, content: { image in
            image
                .resizable()
                .scaledToFill()
        }, placeholder: {
            Color.gray
        })
        .frame(height: Const.cellHeight)
    }
    
    var gradient: some View {
        LinearGradient(gradient: Gradient(colors: [.black, .clear]), startPoint: .leading, endPoint: .trailing)
    }
}

// MARK: - Const
fileprivate struct Const {
    static let bgCornerRadius: CGFloat = 24
    static var cellHeight: CGFloat = UIScreen.main.bounds.height * 0.2
}
