//
//  UnitTestsTests.swift
//  UnitTestsTests
//
//  Created by Lucas Neves dos santos pompeu on 08/12/23.
//

import XCTest
@testable import UnitTests

final class UnitTestsTests: XCTestCase {

    var vc: ViewController!

    override func setUpWithError() throws {
        vc = ViewController()
    }

    override func tearDownWithError() throws {
        vc = nil
    }

    func testFirstFunction() throws {
       print("2")
        let totalValue = 10 + 10
        XCTAssertEqual(20, totalValue)
    }

}
