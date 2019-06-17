/*
 autour : Cho
 problem title : Sort Array By Parity
 problem url : https://leetcode.com/problems/sort-array-by-parity/
 */

import UIKit

class Solution {
    func sortArrayByParity(_ A: [Int]) -> [Int] {
        var resultArray = [Int]()
        var oddArray = [Int]()
        for i in 0..<A.count {
            A[i]%2 == 0 ? resultArray.append(A[i]) : oddArray.append(A[i])
        }
        for i in 0..<oddArray.count {
            resultArray.append(oddArray[i])
        }
        return resultArray
    }
}
