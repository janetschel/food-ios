//
//  FoodListView.swift
//  food
//
//  Created by Jan Etschel on 14.06.24.
//

import SwiftUI

struct FoodListView: View {
    @StateObject var foods = FoodAPI()
    
    var body: some View {
        List(foods.foodCategories, id: \.self) { food in
            VStack(alignment: .leading) {
                HStack {
                    ThumbnailView(food: food)
                    
                    Text(food.strCategory)
                        .fontWeight(.semibold)
                }
            }
        }
        .onAppear {
           if foods.foodCategories.isEmpty {
               Task {
                   await foods.fetchFoodCategories()
               }
           }
       }
        .listRowBackground(Color.clear)

    }
}

#Preview {
    FoodListView()
}
