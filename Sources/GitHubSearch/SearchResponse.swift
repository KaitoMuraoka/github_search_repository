//
//  SearchResponse.swift
//  
//
//  Created by 村岡海人 on 2022/12/25.
//

import Foundation

struct SearchResponse<Item : Decodable>: Decodable {
    var totalCount: Int
    var items: [Item]
    
    enum CodingKeys: String, CodingKey {
        case totalCount = "total_count"
        case items
    }
}
