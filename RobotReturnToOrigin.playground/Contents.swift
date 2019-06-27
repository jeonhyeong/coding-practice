/*
 autour : Cho
 problem title : Robot Return to Origin
 problem url : https://leetcode.com/problems/robot-return-to-origin/
 */

class Solution {
    func judgeCircle(_ moves: String) -> Bool {
        var x = 0
        var y = 0
        for c in moves {
            switch c {
            case "U": y += 1
            case "D": y -= 1
            case "R": x += 1
            case "L": x -= 1
            default: print("no have a case")
            }
            
        }
        if y == 0 && x == 0  {
            return true
        }
        return false
    }
}

