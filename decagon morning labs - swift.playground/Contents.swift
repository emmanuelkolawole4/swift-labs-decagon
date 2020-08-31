import UIKit

//day 1
func hasUnique(str: String) -> Bool { Set(str).count == str.count }
print(hasUnique(str: "folahanmi"))

//day 2
func maskify(_ cc: String) -> String {
    var newCc = ""
    if cc.count < 4 { return cc }
    if cc == "" { return "" }
    for (idx, _) in cc.enumerated() { newCc = idx < cc.count - 4 ?  newCc + "#" : newCc }
    newCc += cc.dropFirst(cc.count - 4)
    return newCc
}

//OR

//func maskify(_ cc: String) -> String {
//    var Substring = ""
//    Substring = String (cc.suffix(4))
//    if cc == "" {
//        return ""
//    }else if cc.count < 4 {
//        return cc
//    }
//    while Substring.count < cc.count {
//        Substring = "#" + Substring
//    }
//    return Substring
//}
print(maskify("23456789098765434567890876"))

//day 3
var name = "folahanmi"
name[name.startIndex]
name[name.index(after: name.startIndex)]
name[name.index(name.startIndex, offsetBy: 3)]

func findOdd(_ integers: Array<Int>) -> Int {
    var final = 0
    let mappedItems = integers.map { ($0, 1) }
    let counts = Dictionary(mappedItems, uniquingKeysWith: +)
    for (key, value) in counts {
        if value % 2 != 0 {
            final += key
        }
    }
   return final
}
print(findOdd([4,10,4,10,6,10,6,10,6,10,6]))

//day 4
func countDuplicates(_ s:String) -> Dictionary<String, Int>.Keys {
    var dict = [String : Int]()
    Array(s).map{dict[$0.lowercased(), default: 0] += 1}
    let store = dict.filter { $0.value >= 3}
    return store.keys
}
print(countDuplicates("Shavavuuulio"))

//func accum(_ s: String) -> String {
//    var result = ""
//    for (idx, letter) in s.enumerated() {
//        result += String(letter.uppercased()) + String(repeating: letter.lowercased(), count: idx) + "-"
//    }
//    return String(result.dropLast())
//}
//
//print(accum("abcdcv"))

let sayHello = "Hello Swift 4 2017";
let result = sayHello.split(separator: " ")
print(result)

//day 5
func accumm(_ s: String) -> String {
    var finalString = ""
    var count = 1
    for letter in s {
        finalString += "\(letter)".uppercased()
        for _ in 1..<count {
            finalString += "\(letter)".lowercased()
        }
        count += 1
        finalString += s.count == count - 1  ? "" : "-"
    }
    return finalString
}

print(accumm("Zpgl"))

let digitWords = ["one", "two", "three", "four", "five"]
let wordToValue = Dictionary(uniqueKeysWithValues: zip(1...4, digitWords ))

//day 6
func dnaComplement(_ dna: String) -> String {
    if dna == "" {
        return ""
    }
    let replaced1 = String(dna.map {
        $0 == "A" ? "T" : $0 == "T" ? "A" : $0
    })
    let replaced2 = String(replaced1.map {
        $0 == "G" ? "C" : $0 == "C" ? "G" : $0
    })
    return replaced2
}
print(dnaComplement("ATTGC"))

//func dnaComplement(_ dna: String) -> String {
//    var arraydna = Array(dna)
//    for (index, i) in arraydna.enumerated() {
//        if i == "A" {
//            arraydna[index] = "T"
//        } else if i == "T" {
//            arraydna[index] = "A"
//        }else if i == "C" {
//            arraydna[index] = "G"
//        } else if i == "G" {
//            arraydna[index] = "C"
//        }
//    }
//    return String(arraydna)
//}
//print(dnaComplement("ATTGC"))

//day 7
func orderWeight(_ str: String) -> String {
    let arrayFromStr = str.components(separatedBy: " ")
    var store: [Int] = []
    for stringNumbers in arrayFromStr {
        var sum = 0
        for characters in stringNumbers {
            sum += Int(String(characters))!
        }
        store.append(sum)
    }
    let combined = zip(store, arrayFromStr).sorted {$0 < $1}
    let sorted = combined.map {$0.1}
    return sorted.joined(separator: " ")
}

print(orderWeight("56 65 74 100 99 68 86 180 90"))






