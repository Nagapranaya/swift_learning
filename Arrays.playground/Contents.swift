var myIntArray = [Int]() // creates an empty int array ,we can  create array of any data type by adding datatype instead of int
Array(repeating: defaultValue, count: specificSize) //Array initialiser to create an array of specific Size, and with a default value is
var arr: [Any]// array with any datatype
array_name.append(element)// appending element to array
array_name.count//to get the count of elements present in the array.
String(array_name)//code to convert array as string
var element = arrayName[index]//syntax to access element of an array at specific index
array_name.isEmpty//to check if an array is empty.
array.contains(e)//to check if it contains specific element
strArray.contains(str)//The syntax to call contains() method to check if the specific string str is present in String Array strArray is
if let index = array.firstIndex(of: e) {
    //index has the position of first match
} else {
    //element is not present in the array
}//snippet to find the index of the element e in Array array
array.append(contentsOf: anotherArray)//syntax to append another array to the array is
arrayName.insert(element, at:index)//insert(_:at:) method that inserts an element to the array at the index
arrayName.insert(contentsOf: anotherArray, at:index)//syntax to insert contents of another array to this array at specific index
array_name.reverse()//we will take an array, and reverse the order of its elements using reverse() method.
array_name.sort()//we will take an array of integers and sort them in increasing order using sort() method.by default its ascending order for descending order sort(by:>)
array_name.filter()//filter() method returns a new array with the elements of the original array, that satisfy the given condition.
for loop for array
        for i in 0...length-1{
    code here
}
length = count of array(arrayname.count gives length)

//Dictionaries


var myDict = [KeyType: ValueType]()//create an empty dictionary
var array1 = [key1, key2, key3]
var array2 = [value1, value2, value3]
 
let myDictionary = Dictionary(uniqueKeysWithValues: zip(array1, array2))
//syntax to create a dictionary from two Arrays.
dictionary_name.count//syntax to count the elements in a dictionary
myDictionary[new_key] = value//assign a value to the Dictionary with a key that is not already present








func alternate(s: String) -> Int {
    // finding all the  distinct characters in string
    //forming possible character pairs
    // according to the pairs removing and finding the strings after removing characters other than pair
    // finding the valid string and returning the length of that string
    var a = [Character]()
    for (_,char) in s.enumerated() {
        if !(a.contains(char)){
            a.append(char)
        }
    }
    var n = 0
    var max_length = 0
    for i in 0...(a.count-1){
        let x = a[i];
        
        n = n+1
        if(n<=a.count-1){
            for j in n...(a.count-1){
                print(x, a[j])
                var a2 = a
                a2.remove(at: j)
                a2.remove(at: i)
                var s2 = s
                print(a2)
                for k in 0...(a2.count-1){
                    s2 = s2.replacingOccurrences(of: String(a2[k]), with: "")
                }
                print(s2)
                var valid = true
                var p:Character = Character(".")
                for(_,char) in s2.enumerated(){
                    if(char != p){
                        p = char
                    }else {
                        valid = false
                        break
                    }
                }
                print(valid)
                if(valid && s2.count>max_length){
                    max_length = s2.count
                }
                
            }
        }
        
    }
    print(a)
    return max_length
}











