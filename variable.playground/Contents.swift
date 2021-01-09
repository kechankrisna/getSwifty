import UIKit
import Foundation

var str = "Hello, playground"
let unchange = "unchanged"
//unchange = 'can\'t change'
str.append(" append")

print(str);

//interger
var number : Int = 12;
print(number);
var value : Double = 12;
print(value);


//array
var numbers : [Int] = [1,2,3]
numbers.count

Double(number) + value

var st = String("helo wrld")
type(of: numbers)

var httpError = (503, "Server error")
let  (_, justReason) = httpError
httpError.1

var name: String? = "1";
print(name?.isEmpty as Any)

var strict : String? = "hello world"
print(strict!.lowercased())


assert(strict?.count ?? 0 > 10)
print("later")

var immutaDict : [ String : Any ]  = [ "name":"krisna", "age":19 ]
print(type(of: immutaDict["name"]))
print(type(of: immutaDict["age"]))

var set :Set = ["apple", "apple", "apples"];
var remove : String? = set.remove("apple")
print(set)


func add(a : Int, b : Int) -> Int { a + b}
func minus(a: Int, b: Int) -> Int { Int(a-b) }

func doMath( operation : (Int,Int) -> Int , a: Int, b: Int  ) -> Int {
    return operation(a, b)
}

doMath(operation: add, a: 2, b: 3)
doMath(operation: minus, a: 2, b: 3)


class Human {
    var name: String?
    init(name: String) {
        self.name = name
    }
    
}

class Student: Human {
    var age:Int?
    init(age: Int) {
        super.init(name: "Student name")
    }
    
    func eat(thing:String) -> Bool {
        guard thing.count > 0 else {
            return false
        }
        return true
    }
}
var human = Human(name: "steven")
var j = human
j.name = "john"

var student : Student =  Student(age: 10)
print(student.name ?? "error")
var isEat : Bool = student.eat(thing: "fish")
print(human.name ?? "")

struct Life {
    var name:String?
    init(name:String) {
        self.name = name
    }
}

struct Animal {
    var age:Int?
    init(age:Int) {
        self.age = age
    }
    
    func eat(thing:String) -> Bool {
        guard thing.count > 0 else {
            return false
        }
        return true
    }
}

var cat : Animal = Animal(age: 10)
//var beEat:Bool = cat.eat(thing: "fish")
//print(beEat)
var d = cat
d.age = 14
d.age
print(cat.age as Any)
print(d.age as Any)


var string = "Hello world"
//string.substring(to: str.firstIndex(of: "o") ?? default "")
