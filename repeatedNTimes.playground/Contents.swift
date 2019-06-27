/*
 autour : Cho
 problem title : N-Repeated Element in Size 2N Array
 problem url : https://leetcode.com/problems/n-repeated-element-in-size-2n-array/submissions/
 */

import Cocoa

class Solution {
    func repeatedNTimes(_ A: [Int]) -> Int {
        for i in 0..<A.count {
            for j in i+1..<A.count {
                if A[i] == A[j] {
                    return A[i]
                }
            }
        }
        return -1
    }
}

print(Solution.init().repeatedNTimes([1,2,3,4,4]))
