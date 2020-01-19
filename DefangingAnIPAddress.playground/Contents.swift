import UIKit

let ip:String = "1.1.1.1"

// Solution1

func defangIPaddr1(_ address: String) -> String {
    let splitedIP = address.split(separator: ".")
    var result = ""
    for (i,s) in splitedIP.enumerated() {
        if i == splitedIP.count-1 {
            result += s
        } else {
            
            result += s+"[.]"
        }
    }
    return result
}

// Solution2

func defangIPaddr2(_ address: String) -> String {
    var defangedIP:String
    defangedIP = address.replacingOccurrences(of: ".", with: "[.]")
    return defangedIP
}

defangIPaddr1(ip)
defangIPaddr2(ip)
