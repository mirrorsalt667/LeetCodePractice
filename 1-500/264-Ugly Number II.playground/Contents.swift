// MARK: Time Limit Exceeded
class Solution1 {
    func nthUglyNumber(_ n: Int) -> Int {
        // 陣列
        var numbers = [1]
        // 2,3,5以外的質因數
        var primeFactors = [Int]()

        var newMember = 1
        while numbers.count < n {
            // 若被其他質因數整除
            var hasOtherFactor: Bool = false
            newMember += 1
            if newMember % 2 == 0 ||
            newMember % 3 == 0 ||
            newMember % 5 == 0 {
                if primeFactors.count > 0 {
                    for item in primeFactors {
                        if newMember % item == 0 {
                            hasOtherFactor = true
                            break
                        }
                    }
                }
                if hasOtherFactor == false {
                    numbers.append(newMember)
                }
            } else {
                primeFactors.append(newMember)
            }
        }
        if let theLast = numbers.last {
            print("answer array: ", numbers)
            print("wrong prime factors: ", primeFactors)
            return theLast
        }
        return -1
    }
}

let solution = Solution1()
solution.nthUglyNumber(11)

class Solution2 {

}
