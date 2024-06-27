func isPrime(input:Int){
    var count = 0
    for i in 2...input-1{
        if input%i == 0{
            count += 1
        }
    }
    if count == 0{
        print(input,"is primenumber")
    }else{
        print(input,"is not a primenumber")
    }
}
isPrime(input: 6)

func primeNumbers(input:Int){
    var noOfPrimeNumbers = 0
    var count = 0
    for j in 2...input{
        count = 0
        for i in 2...j{
            if j%i == 0{
                count += 1
            }
        }
        if count == 1{
            print(j)
            noOfPrimeNumbers += 1
        }
    }
    print("There are",noOfPrimeNumbers,"upto",input)
}
primeNumbers(input: 100)
