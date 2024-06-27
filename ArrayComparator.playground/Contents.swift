import UIKit

var numberArray = [1,3,2,6,2]
print("numberArray before sorting: ", numberArray)

numberArray.sort()
print("numberArray after sorting: ", numberArray)

struct Product {
    let name: String
    let price: Double
    let expDate: Date
    let weight: Int
}

let formatter = DateFormatter()
formatter.dateFormat = "yyyy/MM/dd"
let bottleGuardExpDate = formatter.date(from: "2024/06/30")
let attaExpDate = formatter.date(from: "2024/12/08")
let pepperPowderExpDate = formatter.date(from: "2024/10/08")

let bottleGuard = Product(name: "BottleGuard", price: 35.00, expDate: bottleGuardExpDate!, weight: 2000)
let atta = Product(name: "Atta", price: 289.00, expDate: attaExpDate!, weight: 5000)
let pepperPowder = Product(name: "Pepper Powder", price: 39.00, expDate: pepperPowderExpDate!, weight: 50)
print("\n",bottleGuard.price,"\n",bottleGuard.expDate,"\n",bottleGuard.weight)
print(atta)
print(pepperPowder)

var order1 = [Product]()
order1.append(bottleGuard)
order1.append(atta)
order1.append(pepperPowder)
//order1.sort() we will get error we cannot sort as it has many properties so we use comparable to do sorting based on which property we want to sort

print("\norder list before sorting: \n", order1)
let orderSortedByPrice = order1.sorted { i, j in
    i.price < j.price
}
print("\norder list after sorting: \n", orderSortedByPrice)
let orderSortedByWeight = order1.sorted { i,j in
    i.weight < j.weight
}
print("\norder list after sorting by weight: \n" , orderSortedByWeight)



func defaultReturn() -> Int{
    100
}

func orderSortByDate(items: [Product]) -> [Product]{
    items.sorted { i, j in
        i.expDate < j.expDate
    }
}

let x = defaultReturn();
print("\nx: ", x)

let orderSortedByDate = orderSortByDate(items: order1)
print("\norder list after sorting by date: \n" , orderSortedByDate)

















