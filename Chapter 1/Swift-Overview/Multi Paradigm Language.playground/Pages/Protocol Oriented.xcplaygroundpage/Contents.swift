//: ### Protocol Oriented

extension CollectionType {

  func findFirst (@noescape find: (Self.Generator.Element) -> Bool) -> Self.Generator.Element? {
    for x in self { 
      if find(x) {
        return x
      }
    }
    return nil
  }
}

let ar = [1, 200, 400]
let dic = [1: "One", 20 : "Twenty"]
let arFirst = ar.findFirst { $0  > 100 }
let dicFirst = dic.findFirst { key, v in key > 10 }

//: Chained methods calls

//Old way
//map(filter(map(ar) { $0 * 2 }) { $0 > 50 }) { $0 + 10 } 

//New way
ar.map{ $0 * 2 } .filter{ $0 > 50 } .map{ $0 + 10 }

//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
