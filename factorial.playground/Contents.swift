import UIKit

func factorial(input:Int){
    var result = 1
    if input > 1{
        for i in 2...input{
            result = result*i
            
        }
        print(result)
    }
}
    
factorial(input: 5)


func factors(input:Int){
    for i in 1...input-1{
        if input % i == 0{
            print(i,"is a factor of ",input)
        }
    }
}
factors(input: 100)
