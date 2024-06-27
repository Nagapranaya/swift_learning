var a : Int? //1.force unwrapping
//a = 10
//print(a!) //prints 10 (force unwrapping if the value is not nil)
// a = nil
// print(a!)if we print app crashes at run time

//2.check for nil value
if a != nil{
    print(a!)
} //here as if condition is false it wont go to print statement and there will be no crash if there is a value it will go to print and print the optional value
//3.optional binding
var myOptional : String?
if let safeOptional = myOptional{
    print(safeOptional)//here if myOptional found nil it will skip and go to else
}else{
    print("myOptional is found nil")
}
//4.Nilcoalescing operator (??) optional ?? default
 //a = 2
//print (a ?? 3)// it will print 2 as a is having value
// if we dont give value to a it will check for value if it has value prints the value of a if not it will print the default value given it will check for value of a if it is nil will print default value

var b : String?
b = nil
print(b ?? "String is nil")// it wil print string is nil as b is nil

// optional chaining used to call methods and properties of optioanl struct

struct MyOptional{
    var property = 123
    func method(){
        print("I am struct method")
    }
}
let myOptional1 : MyOptional?
myOptional1 = MyOptional()
print(myOptional1?.property)

