//
//  UtilsTests.swift
//  UnitTestsTests
//
//  Created by Lucas Neves dos santos pompeu on 11/12/23.
//

import XCTest
@testable import UnitTests

final class UtilsTests: XCTestCase {

    func testAverage() {
        let numbers = [1, 2, 3, 4, 5]
        let expected = 3
        let result = Utils.average(numbers: numbers)
        XCTAssertEqual(result, expected)
    }

    func testIsInt() {
        let textTrue = "10000"
        let resultTrue = Utils.isInt(text: textTrue)
        let textFalse = "100Text"
        let resultFalse = Utils.isInt(text: textFalse)

        XCTAssertTrue(resultTrue, "O resultTrue não pode ser false, pois ele deve conseguir converter a string \(textTrue) em um Int!")
        XCTAssertFalse(resultFalse, "O resultTrue não pode ser true, pois ele deve conseguir converter a string \(textFalse) em um Int!")
    }

    func testRandom() {
        let upperBound = 1000
        let result = Utils.random(upperBound: upperBound)

        XCTAssertTrue(result >= 0 && result <= upperBound, "O número sorteado não pode ser menor que zero ou maior que o upperBound!")
    }

    func testTrim() {
        let text = "   Text Example     "
        let expected = "Text Example"
        let result = Utils.trim(text: text)
        XCTAssertEqual(expected, result, "O texto não deve conter espaços no final e no inicio da string!")
    }

}
