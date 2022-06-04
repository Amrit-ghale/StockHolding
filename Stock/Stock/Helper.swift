//
//  Helper.swift
//  Stock
//
//  Created by Amrit Ghale on 03/06/2565 BE.
//

import SwiftUI
import Foundation

func input() -> String {
    let keyboard = FileHandle.standardInput
    let inputData = keyboard.availableData
    let rawString = NSString(data: inputData, encoding:String.Encoding.utf8.rawValue)
    if let string = rawString {
        return string.trimmingCharacters(in: NSCharacterSet.whitespacesAndNewlines)
    } else {
        return "Invalid input"
    }
}

func randomIntBetween(low:Int, high:Int) -> Int {
    let range = high - (low - 1)
    return (Int(arc4random()) % range) + (low - 1)
}

