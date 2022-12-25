//
//  SearchResponseTests.swift
//  
//
//  Created by 村岡海人 on 2022/12/25.
//

import Foundation
import XCTest
@testable import GitHubSearch

final class SearchResponseTests: XCTestCase {
    func testDecodeRepositories() throws {
        let jsonDecoder = JSONDecoder()
        guard let data = SearchResponse<Repository>.exampleJSON.data(using: .utf8) else { return }
        let response = try jsonDecoder.decode(SearchResponse<Repository>.self, from: data)
        
        XCTAssertEqual(response.totalCount, 141722)
        XCTAssertEqual(response.items.count, 3)
        
        let firstRepository = response.items.first
        XCTAssertEqual(firstRepository?.name, "swift")
        XCTAssertEqual(firstRepository?.fullName, "apple/swift")
    }
}
