import UIKit

func printNumbers(a:Int){
    for i in 1...a{
        print(i)
    }
    
}

printNumbers(a: 5)



//Recursive function


func printNumber(a:Int){
    if(a>1){
        printNumber(a: a-1)
        print(a)
    }else{
        print(a)
    }
}

printNumber(a: 5)
//Disadvantages of recursion
//Recursion uses more memory. In a computer, a function call is added to the “call stack” and stays there until it returns a value. ...
//Recursion can cause stack overflows. ...
//Recursion can be slow if you don't use it correctly with memoization.
//Recursion can be confusing.

