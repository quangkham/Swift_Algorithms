//
//  Two Sum.swift
//  
//
//  Created by Quang Kham on 25/06/2024.
//

import Foundation

func binarySearch(array: [Int], key: Int) -> Bool {
    var lowerBound = 0
    var upperBound = array.count - 1

    while lowerBound <= upperBound {
        let midIndex = (lowerBound + upperBound) / 2
        if array[midIndex] == key {
            return true
        } else if array[midIndex] < key {
            lowerBound = midIndex + 1
        } else {
            upperBound = midIndex - 1
        }
    }
    return false
}

// solution one : binary search

func twoSumForBinarySearch(array : [Int] , sum : Int) -> Bool {

    if array.count == 0  { return false }

    for i in 0..<array.count {

         let complement = sum - array[i] // complement is remainaing value from mimus of sum

         var tempArray = array
         tempArray.remove(at: i) // remove after search array index

        let hasComplement = binarySearch(array: tempArray, key: complement)
        print("num : \(array[i]) - \(hasComplement)")

        if hasComplement == true {
            print("true - num: \(array[i]) , complement \(complement)")
            return true
        }

    }

    return false

}

//Option 2

func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    var dict = [Int: Int]()
    for (index, num) in nums.enumerated() {
        print(" Index:\(index) -- Number:\(num)")
        if let complementIndex = dict[target - num] {
            return [complementIndex, index]
        }
        dict[num] = index
    }
    return []
}


let numbers = [1,3,6,7,7,12,14]
let result = twoSum(numbers, 14)
print("\(result)")

