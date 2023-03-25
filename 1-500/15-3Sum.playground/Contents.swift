// MARK: - Time Limit Exceeded
class Solution1 {
    func threeSum(_ nums: [Int]) -> [[Int]] {
        var returnNumberArrays = [[Int]]()
        let lastIndex = nums.count - 1 - 2
        // loop 1
        for n in 0 ... lastIndex {
            print("= first index =>", n)
            let firstNum = nums[n]
            // loop 2
            for second in (n + 1) ... (lastIndex + 1) {
                print("second index =>", second)
                let secondNum = nums[second]
                let twoSum = firstNum + secondNum
                // loop 3
                for third in (second + 1) ... (lastIndex + 2) {
                    print("third index =>", third)
                    let thirdNum = nums[third]
                    let threeSum = twoSum + thirdNum
                    if threeSum == 0 {
                        // 排序
                        var answer = [firstNum, secondNum, thirdNum]
                        answer.sort(by: {$0 < $1})
                        if returnNumberArrays.count == 0 {
                            returnNumberArrays.append(answer)
                        } else {
                            // 重複的不加入
                            var isTheSame = false
                            // loop 4
                            for array in returnNumberArrays {
                                if array == answer {
                                    isTheSame = true
                                    break
                                }
                            }
                            if isTheSame == false {
                                returnNumberArrays.append(answer)
                            }
                        }
                        print(returnNumberArrays)
                    }
                }
            }
            
        }
        return returnNumberArrays
    }
}

//class Solution2 {
//    func threeSum(_ nums: [Int]) -> [[Int]] {
//
//    }
//}

let solution1 = Solution1()

let inputArray = [-1,0,1,2,-1,-4]
solution1.threeSum(inputArray)
