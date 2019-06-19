// Author : cho
// ToDo : code refactoring
import UIKit

let N = 5
let stages = [2, 1, 2, 6, 2, 4, 3, 3]

func myAnswer (_ stages:[Int], _ n:Int) -> [Int]{
    var result = [Int]()
    var stagePersonCount = [Int:Int]()
    var failPercentages = [Int:Float]()
    var totalPlayer = 0
    for i in 1...n {
        for j in stages {
            if i == j {
                stagePersonCount[i] = stagePersonCount[i] == nil ?  1 : stagePersonCount[i]! + 1
                totalPlayer += j
            }
        }
        if (stagePersonCount[i] == nil)
        {
            stagePersonCount[i] = 0
        }
    }
    
    for i in 1...n {
        let stagePerson = stagePersonCount[i]
        failPercentages[i] = Float(stagePerson!) / Float(totalPlayer)
        totalPlayer = totalPlayer - stagePerson!
    }
    
    var a = [Float]()
    for i in 1...n {
        a.append(failPercentages[i]!)
    }
    a.sorted(by: <)
    
    for i in 0..<n {
        for j in 1...n {
            if a[i] == failPercentages[j] {
                result.append(j)
            }
        }
    }
    print(result)
    return result
}

myAnswer(stages, N)
