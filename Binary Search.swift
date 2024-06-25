//
//  Binary Search.swift
//  
//
//  Created by Quang Kham on 25/06/2024.
//

import Foundation
 
//Easy : Option one
func binarySearch(array : [Int], key : Int) -> Bool {

    if array.count == 0 { return false }

    let minIndex = 0
    let maxIndex = array.count - 1
    print("\(maxIndex)")
    let midIndex = maxIndex / 2
    let midValue = array[midIndex]

    if key < array[minIndex] || key > array[maxIndex] {
        print ("\(key) is not in the array ")
    }

    if key > midValue {
        let arraySLice = Array(array[midIndex + 1...maxIndex])
        return binarySearch(array: arraySLice, key: key)
    }

    if key < midValue {
        let slice = Array(array[minIndex...midIndex - 1])
        return binarySearch(array: slice , key: key)
    }


    if key == midValue {
        print("\(key)")
        return true
    }
    return false
}

//Option 2
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

let arrayList = [2,5,8,6,7, 23, 12, 4, 7, 9]
let result  = binarySearch(array: arrayList, key: 7)
