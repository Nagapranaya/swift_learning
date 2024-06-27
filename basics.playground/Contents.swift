import UIKit
//variable

let greeting : String = "Nagapranaya" // declaring and initialize a variable
let greeting2 = "Nagapranaya" // declaring and initialize a variable. swift can autopredict type
print(greeting)

//Structs
struct Name{
    let a : String
    let b: Int
}

var greet : Name = Name(a:"nagapranaya",b: 2)//  declaration  and initialize of struct with constructor
//greet.a = "Mahesh" gives error because we have declared a as constant value
greet = Name(a: "mahesh", b: 6) // it wont give error if we change values also because other object is created
var wish = Name(a: "Mahesh", b: 3)

print(greet)
print(wish)
struct Birds{
    let name : String = "parrot"
    var count : Int? // if we keep ? and var for declaration of variable we can initialize struct without arguments if we use let instead of var have to pass arguments if not we get error
}
var eagle : Birds = Birds(count: 6) // variable declaration and struct initialization and assign value to variable with argument
print(eagle)
var peacock : Birds = Birds() // struct initialization without argument


struct Animal{
    var birds : Birds // using Birds struct as datatype for the variable birds user defined data type
}
var animal : Animal = Animal(birds: eagle) // here eagle is a object of type Birds or here we can initialize Animal object with arguments it want data for birds birds variable is of datatype Birds we have to use as Animal(birds:Birds(count:8))
print(animal)

//classes
class BirdsFeatures { // define or declaration of class BirdsFeatures
    var name : String = "parrot"
    var number : Int = 0
    func birdCanFly(){
        print("bird can fly")
    }
}
var birds : BirdsFeatures = BirdsFeatures() // we have declared birds variable and type of variable is BirdsFeatures and we have initialized BirdsFeatures class and assigned it to birds variable birds variable is an object of type BirdsFeatures means it will have all what are there in BirdsFeatures class
print(birds.name) // accessing the data present in that variable
birds.birdCanFly()

class Parrot:BirdsFeatures {// parent child class parrot is child and BirdsFeatures is parent class
    override func birdCanFly() {
        super.birdCanFly() // calls the function present in super class
        print("birds can fly if they have wings")
    }
 
}
var bird : Parrot = Parrot()
bird.birdCanFly()

class Peacock{
    var parrot : Parrot = Parrot() //declaring parrot variable of Parrotclass datatype and initializing Parrot class and assigning  to parrot variable
}
var hen : Peacock = Peacock() // creating hen variable of Peacock class datatype  and initializing Peacock class and assigning to hen variable
print(hen.parrot) // accessing and printing the data present in the hen variable


// same as above how we have declared variable of type struct and class we can declare variable of type protocol but as protocol contains only definations not initializations we cannot initialize protocol if we want to do that we have to create a class keeping protocol class as super class and we have to initialize that class
protocol Vehicles{
    func noOfWheels()->Int //we are just defining function signature(means fucntion name ,arguments,return type)
    func color()->String
}

class Car:Vehicles{
    func noOfWheels() -> Int { // we are implementing the function which we have defined in the protocol to implement we have to return integer so we are returning
        return 4
    }
    
    func color() -> String {
        return "Blue"
    }
    
    func gasType() -> String {
        return "Petrol"
    }
    
    
}
var celerio : Car = Car() //we have declared a variable celerio and the datatype of the celerio is Car and we have initialised Car class and assigned to variable celerio
print(celerio)
print(celerio.noOfWheels())
print(celerio.color())
print(celerio.gasType())


var tuscon: Vehicles = Car() //we have declared a variable tuscon and the datatype of the tuscon is Vehicle protocol and we have initialised Car class and assigned to variable tuscon. The variable type and the class we are initialising are different  but we are able to assign value to variable because vehicle is super class of Car class
print(tuscon)
print(tuscon.noOfWheels())
print(tuscon.color())
//print(tuscon.gasType()) gives error because the var tuscon is of type Vehicles it does not have the function we are calling.

//classes more examples


class Building{
    var floors : Int = 0
    var noOfFlats : Int = 0
    func cleaning(){
        print("cleaned")
        
    }
}

class Block:Building{
    var noOfBlocks : Int = 0
    var nameOfBlock : String = ""
    var noOfFloors : Int = 0
   
    override func cleaning() {
        print("not cleaned")
    }
    func security(){
        print("Security is present")
    }
}

var vasavi : Building = Building()
var firstBlock : Block = Block()

vasavi = firstBlock // if we assign child class data type variable to parent class data type variable we dont get error
firstBlock = vasavi as! Block  // if we assign parent class  datatype variable to child class data type we get error if we use as! Block after vasavi error will be removed
//optionals

var number: Int? = Int("42") //optinal datatype
print(number!)// optional unwrapping

//optional binding

if let number1 = number{ // declaring number1 variable as constant and assigning the value present in number to number1 conditionally
    print(number1)
}else{
    print("condition false")
}
//print(number1)// gives error because number1 is out of scope
var number2: Int?

if let number1 = number2{
    print(number1)
}else{
    print("condition false")// prints this because as value is not present in number2 when we assign it to number1 condition becomes false and executes else part
}




let a = 2
let b = 3
print(a<b)
let c = a+b // = is assignment operator,+,-,*,/,% are arithematic operator
print(c)
let d = a<b // < is conditional operator
print(d)
print(a==b)// ==,<=,>=,<,> are conditional operators, condition returns true or false
print(a<=b)
print(a>=b)
print(a>b)

//computed property

//syntax var name of property:datatype{code for returning value to name of property }

var calculate:Int{
    return 6+5
}
//closure
//functions related
//func addition(a:Int,b:Int)->Int{
   // return a+b
//}
// above function can be return as

func calculate(a: Int,b: Int,operation: (Int,Int) -> Int)->Int
{
    return operation(a,b)
}
func add(n1: Int,n2: Int)->Int {
    return n1+n2
}
calculate(a: 3, b: 4, operation: {(n1: Int,n2: Int)->Int in //here we are converting add function into closure and using it as input to calculate function operation input```
    return n1+n2
})
//try catch

//synchronous and asynchrnous


protocol AddProtocol {
    static func +(lhs: Self, rhs: Self) -> Self
}

extension Int: AddProtocol { }

extension String: AddProtocol {}

extension Double: AddProtocol {}

func genericSum<T: AddProtocol>(a:T, b:T) -> T{
    return a+b
}

print(genericSum(a: "hello",b: "world"))
print(genericSum(a: 10,b: 20))










