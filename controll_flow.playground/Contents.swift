import UIKit


/**
 Extension method to Int:
 
 */

extension Int {
    var isPrime : Bool {
        for item in 2...9 {
            if(item == self) {
                continue
            }
            if(self <= 1 || self%item == 0 ){
                return false
            }
        }
        return true
    }
}

/**
 tests
 */
var primes : [Int] =  Array(1...100).filter { (n) -> Bool in
    n.isPrime
}
//print(primes)


/**
 Assignment:
 
    Condition
        if( x % 3 == 0 &&  x % 5 == 0  ) print "fizzbuzz"
        if( x % 3 == 0  ) print "fizz"
        if( x % 5 == 0  ) print "buzz"
        if(x.isPrime) print "prime"
        else print x
                
 */

Array(1...100).forEach { (x) in
    if( x % 3 == 0 &&  x % 5 == 0  ){
        print ("fizzbuzz");
    }else if( x % 3 == 0  ) {
        print("fizz");
    }else if( x % 5 == 0  ){
        print("buzz");
    }else if(x.isPrime) {
        print("prime");
    }else {
        print(x)
    }
}
