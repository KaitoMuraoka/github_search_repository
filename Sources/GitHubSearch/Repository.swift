//
//  Repository.swift
//  
//
//  Created by 村岡海人 on 2022/12/25.
//

import Foundation

struct Repository: Decodable {
    var id: Int
    var name: String
    var fullName: String
    var owner: User
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case fullName = "full_name"
        case owner
    }
}
