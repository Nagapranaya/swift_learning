var name: String//we declare a variable name of type String
var name = "" //we define a variable name and assign an empty string value.
var name = String() // we define a variable name and assign a new instance of String.
let message = """
This is first line.
This is second line.
This is third line."""//we define a multiline string literal, and assign it to a variable x.
String.count//To get the length of a String in Swift, use count property of the string.
var element = arrayName[index]//The syntax to access element of an array at specific index is
isEmpty//A Boolean value that determines whether a string is empty or not.
hasPrefix(prefix: String)//Function to check whether a given parameter string exists as a prefix of the string or not.
hasSuffix(suffix: String)//Function to check whether a given parameter string exists as a prefix of the string or not.
toInt()//Function to convert numeric String value into Integer.
utf8//Property to return a UTF-8 representation of a string.
utf16//Property to return a UTF-16 representation of a string.
unicodeScalars//Property to return a Unicode Scalar representation of a string.
+//Operator to concatenate two strings, or a string and a character, or two characters.
+=//Operator to append a string or character to an existing string.
==//Operator to determine the equality of two strings.
<//Operator to perform a lexicographical comparison to determine whether one string evaluates as less than another.
==//Operator to determine the equality of two strings.
startIndex//To get the value at starting index of string.
endIndex//To get the value at ending index of string.
Indices//To access the indices one by one. i.e. all the characters of string one by one.
insert("Value", at: position)//To insert a value at a position.
remove(at: position)
removeSubrange(range)//to remove a value at a position, or to remove a range of values from string.
reversed()//returns the reverse of a string.
let start = str.index(str.startIndex, offsetBy: startPosition)
let end = str.index(str.endIndex, offsetBy: -endPosition)
let range = start..<end
 
let subStr = str[range]//The syntax to concatenate two strings
str1.contains(str2)//The syntax to check if String str1 contains the String str2
str1.starts(with: str2)//The syntax to check if String str1 starts with the String str2
str1.hasSuffix(str2)//The syntax to check if String str1 ends with the String str2
str.lowercased()//The syntax to convert a String str to Lowercase
str.uppercased()//The syntax to convert a String str to Uppercase
str1.insert(ch, at: i)//A simple code snippet to demonstrate how to use String.insert() method
str1.remove(at: i)//A simple code snippet to demonstrate how to use String.remove() method
var result = String(str.reversed())//The syntax to reverse a String str using reversed()
str.split(separator: ch)//The syntax to split the String str with separator character ch
Int(x)//The syntax to convert a String x to Integer
String(x)//The syntax to convert an integer x to String


