//: ### Tuple

let numbers = (1, 5.5)
numbers.0
numbers.1

//: Prove Tuple elements names when declaring it
let result: (code: Int, message: String) = (404, "Not fount")
result.code
result.message

//: Prove Tuple elements names when creating a Tuple instance
let result1 = (code: 404, message: "Not fount")
result1.code
result1.message

//: Assign each Tuple's value to the contstants
let (code ,message): (Int, String) = (404, "Not fount")
code
message

//: Assign each Tuple's value to the contstants. 
//: Use type inference, no need to specify types
let (code1 ,message1) = (404, "Not fount")
code1
message1

//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
