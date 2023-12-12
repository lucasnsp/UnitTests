//
//  Utils.swift
//  UnitTests
//
//  Created by Lucas Neves dos santos pompeu on 11/12/23.
//

import Foundation

class Utils {

    static func average(numbers: [Int]) -> Int {
        var total = 0
        for number in numbers {
            total = total + number
        }
        total = total / numbers.count
        return total
    }

    static func isInt(text: String) -> Bool {
        return Int(text) != nil
    }

    static func random(upperBound: Int) -> Int {
        return Int.random(in: 0...upperBound)
    }

    static func trim(text: String) -> String {
        return text.trimmingCharacters(in: .whitespaces)
    }

}
