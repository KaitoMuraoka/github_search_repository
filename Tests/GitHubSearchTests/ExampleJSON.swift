//
//  ExampleJSON.swift
//  
//
//  Created by 村岡海人 on 2022/12/25.
//

import Foundation
@testable import GitHubSearch

extension User {
    static var exampleJSON: String {
        return """
        {
            "login": "apple",
            "id": 10639145
        }
        """
    }
}

extension Repository {
    static var exampleJSON: String {
        return """
        {
            "id": 44838949,
            "name": "swift",
            "full_name": "apple/swift",
            "owner": {
                "login": "apple",
                "id": 10639145
            }
        }
        """

    }
}

extension SearchResponse where Item == Repository {
    static var exampleJSON: String {
        return """
        {
            "total_count": 141722,
            "items": [
                {
                    "id": 44838949,
                    "name": "swift",
                    "full_name": "apple/swift",
                    "owner": {
                        "id": 10639145,
                        "login": "apple"
                    }
                },
                {
                    "id": 790019,
                    "name": "swift",
                    "full_name": "openstack/swift",
                    "owner": {
                        "id": 324574,
                        "login": "openstack",
                    }
                },
                {
                    "id": 20822291,
                    "name": "SwiftGuide",
                    "full_name": "ipader/SwiftGuide",
                    "owner": {
                        "id": 373016,
                        "login": "ipader",
                    }
                }
            ]
        }
        """
    }
}
