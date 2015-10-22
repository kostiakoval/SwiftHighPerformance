//: ### Change person nickname

//Can't change constant 
/*
let sam = Person(firstName: "Sam", lastName: "Bosh", nickName:"sam")
let rockky = sam.changeNickName("Rockky")
*/

var sam = Person(firstName: "Sam", lastName: "Bosh", nickName:"BigSam")
let oldSem = sam
sam = sam.changeNickName("Rockky")

//: [TOC](TOC) | [Previous](@previous)
