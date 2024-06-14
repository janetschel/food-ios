//
//  NetworkError.swift
//  food
//
//  Created by Jan Etschel on 14.06.24.
//

import Foundation

enum NetworkError: Error {
    case badUrl
    case invalidRequest
    case badResponse
    case badStatus
    case failedToDecodeResponse
}
