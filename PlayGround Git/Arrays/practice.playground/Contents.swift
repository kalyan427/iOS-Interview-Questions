

func sumOFDigits(_ n: Int)->Int {
    var n = n
    var sum = 0
    while n > 0 {
        sum = sum + n % 10
        n = n/10
    }
    return sum
}

print(sumOFDigits(1234))

