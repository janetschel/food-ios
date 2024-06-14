//
//  FoodCategory.swift
//  food
//
//  Created by Jan Etschel on 14.06.24.
//

import Foundation

struct FoodCategoryModel: Hashable, Codable {
    let idCategory: String
    let strCategory: String
    let strCategoryThumb: String
    let strCategoryDescription: String
}
