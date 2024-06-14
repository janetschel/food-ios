//
//  ThumbnailView.swift
//  food
//
//  Created by Jan Etschel on 14.06.24.
//

import SwiftUI

struct ThumbnailView: View {
    var food: FoodCategoryModel
    
    var body: some View {
            AsyncImage(url: URL(string: food.strCategoryThumb)) { result in
                result
                    .resizable()
                    .aspectRatio(contentMode: .fill)

            } placeholder: {
                Circle()
                    .foregroundColor(.white)
                    .frame(width: 50, height: 50)
            }
                .clipShape(Circle())
                .shadow(color: Color.black.opacity(0.5), radius: 6, x: 0, y: 3)
                .frame(width: 50, height: 50)
                .padding(.trailing)
    }
}
