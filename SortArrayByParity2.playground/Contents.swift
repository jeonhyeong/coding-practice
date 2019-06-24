/*
 autour : Cho
 problem title : Sort Array By Parity II
 problem url : https://leetcode.com/problems/sort-array-by-parity-ii/
 */
class Solution {
    func sortArrayByParityII(_ A: [Int]) -> [Int] {
        var evenArray = [Int]()
        var oddArray = [Int]()
        var resultArray = [Int]()
        for i in 0..<A.count {
            let val = A[i]
            val%2 == 0 ? evenArray.append(val) : oddArray.append(val)
        }
        for i in 0..<A.count/2 {
            resultArray.append(evenArray[i])
            resultArray.append(oddArray[i])
        }
        return resultArray
    }
}
