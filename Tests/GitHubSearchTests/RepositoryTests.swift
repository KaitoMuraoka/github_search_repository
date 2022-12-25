//
//  RepositoryTests.swift
//  
//
//  Created by 村岡海人 on 2022/12/25.
//

import Foundation
import XCTest
@testable import GitHubSearch

final class RepositoryTests: XCTestCase {
    func testDecode() throws {
        let jsonDecoder = JSONDecoder()
        guard let data = Repository.exampleJSON.data(using: .utf8),
              Repository.exampleJSON.data(using: .utf8) != nil
        else { return }
        let repository = try jsonDecoder.decode(Repository.self, from: data)
        
        XCTAssertEqual(repository.id, 44838949)
        XCTAssertEqual(repository.name, "swift")
        XCTAssertEqual(repository.fullName, "apple/swift")
        XCTAssertEqual(repository.owner.id, 10639145)
    }
}
