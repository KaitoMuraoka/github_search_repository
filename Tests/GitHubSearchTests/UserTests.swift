//
//  UserTests.swift
//  
//
//  Created by 村岡海人 on 2022/12/25.
//

import Foundation
import XCTest
@testable import GitHubSearch

final class UserTests: XCTestCase {
    func testDecode() throws {
        let jsonDecoder = JSONDecoder()
        guard let data = User.exampleJSON.data(using: .utf8),
              User.exampleJSON.data(using: .utf8) != nil
        else { return }
        let user = try jsonDecoder.decode(User.self, from: data)
        XCTAssertEqual(user.id, 10639145)
        XCTAssertEqual(user.login, "apple")
    }
}
