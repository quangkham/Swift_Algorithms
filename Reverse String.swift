//
//  Reverse String.swift
//  Created by Quang Kham on 25/06/2024.
//

import Foundation
////Reserve string

func reverseString(_ s:inout [String]){

    var i = 0 // head
    var j = s.count - 1 // tail

    while i < j {
           s.swapAt(i, j)
           i += 1
           j -= 1
       }
}

var originalArray = ["h","e","l","l","o"]
reverseString(&originalArray)

originalArray.reversed() // build in function of swift

print("Reverse sting" , originalArray)
