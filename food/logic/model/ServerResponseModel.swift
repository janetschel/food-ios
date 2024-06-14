//
//  ServerResponseModel.swift
//  food
//
//  Created by Jan Etschel on 14.06.24.
//

import Foundation

struct ServerResponseModel : Decodable, Encodable {
    let categories: [FoodCategoryModel]
}
