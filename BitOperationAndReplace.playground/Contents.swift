
/*
 author : cho
 */

import UIKit

let n = 6;
let arr1 = [20, 40, 32, 11, 45, 60]
let arr2 = [51, 21, 17, 55, 14, 33]

func getAnswer() -> [String] {
    var result = [String]();
    for i in 0..<n {
        var a = String(arr1[i] | arr2[i], radix: 2)
        if (a.count < n) {
            for j in 0...n-a.count {
                a.insert("0", at: a.startIndex)
            }
        }
        result.append(a.replacingOccurrences(of: "0", with: " ").replacingOccurrences(of: "1", with: "#"))
    }
    return result;
}

getAnswer();
