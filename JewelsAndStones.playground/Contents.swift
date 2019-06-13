import UIKit
/*
 autour : Cho
 problem title : Jewels And Stones
 problem url : https://leetcode.com/problems/jewels-and-stones/
*/

class Solution {
    var jewelsCount = 0
    func numJewelsInStones(_ J: String, _ S: String) -> Int {
        for i in 0 ..< S.count {
            if J.contains(S[S.index(S.startIndex, offsetBy: i)]) {
                jewelsCount += 1
            }
        }
        return jewelsCount;
    }
}
