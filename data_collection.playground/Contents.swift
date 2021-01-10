import UIKit


/*
 -------- ARRAY -----------
 
 - using array of object which can have properties, method, etc.
 - those properties is flexible to change
 + props:
    + very benefit when using it as the collection of the same attitude object
    + easy to mentence while the collection of the same attitude is bigger
    + it is recommended If you want to store items for a todo list, that works best when the order is predictable
    + it is recommended to store data that can be uniqued (Set), sort, filter, re-arrange etc. (mutable datas)
    + if you have collection of object or collection of collection, it is highly recommande to to multi-dimensional array
 - cons:
    - can not access each element by key name but index
    - it might be not recommended to use for collection of data that has difference attitude, behavior, or type
 */
class Student {
    var name: String
    var score: Int
    init(name:String, score:Int = 0) {
        self.name = name
        self.score = score
    }
}

var students : [Student] = Array(1...10).map({ (i) -> Student in
    Student(name: "student \(i)", score: i)
}) as [Student]

var passes : [Student] = students.filter { (student) -> Bool in
    student.score > 5
}


/*
 -------- TURPLE -----------

 - using turple represent as an object which can own its seperated property and method
 - but those property stand as independent variable
 + pros:
    + very benefit while thoses turble (represent an object) have differenct attitude
    + can access the value through the index such .0, .1 .2 or by name any variable
    + save time and line of code if you want to have many variable and assign it at one time
    + recommend to use turple If you want to hold precisely two strings, or precisely two strings and an integer, or precisely three Booleans, or similar
    + it is also recommended to use while data is immutable such server reponse, etc (my idea)
 - cons:
    - you will need to assign variable many time when you have many turple and want to access the value by any specific name
    - it might be not recommended to write a turple that have function because look so messy and hard to maintenance
 */
func walk() { print("i'm walking!") }
func eat() { print("i'm eating!") }
func look() { print("i'm looking!") }
var (name1, score1, can1) = ("Student 1", 1, walk )
var (name2, score2, can2) = ("Student 2", 2, eat)
var (name3, score3, can3) = ("Student 3", 3, look)
//.... name10, score3
/**
 can1()
 can2()
 can3()
 */

var response = (500, "Internal Error!", false)
// var response = (404, "Not found!", false)
// var response = (200, "data", true)


/**
 -------- RANGE -----------
 
  - Definition: Is a sequent of number from lower bound to the upperbound which mean the lower bound must smaller than or  equal to the upper bound.
  - Condition: Both lower and upper can be negative
  - Usage: as its defintion, in order to generate the sequent of number. It is normally very benefit when you want to make sub of array quickly
 */
students[0...3].forEach { (student) in
    print("\(student.name) get scored \(student.score)")
}
