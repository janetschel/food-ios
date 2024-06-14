//
//  FoodAPI.swift
//  food
//
//  Created by Jan Etschel on 14.06.24.
//

import Foundation

@MainActor class FoodAPI : ObservableObject {
    @Published var foodCategories = [FoodCategoryModel]()
    
    func fetchFoodCategories() async {
        guard let response: ServerResponseModel = 
                await WebService().downloadData(fromURL: "https://www.themealdb.com/api/json/v1/1/categories.php") else { return }
        
        foodCategories = response.categories
    }
}
