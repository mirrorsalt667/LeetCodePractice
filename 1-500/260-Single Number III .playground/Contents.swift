import Foundation

/// Given an integer array nums, in which exactly two elements appear only once and all the other elements appear exactly twice. Find the two elements that appear only once. You can return the answer in any order.

/// You must write an algorithm that runs in linear runtime complexity and uses only constant extra space.

final class Solution {
  func singleNumber(_ nums: [Int]) -> [Int] {
    var numberSet: Set<Int> = []
    var repeatNums: Set<Int> = []
    var answerNums = [Int]()
    for num in nums {
      let oriCount = numberSet.count
      numberSet.insert(num)
      if oriCount == numberSet.count {
        // count沒增加代表是重複的數字
        repeatNums.insert(num)
      }
    }
    numberSet.subtract(repeatNums)
    for num in numberSet {
      answerNums.append(num)
    }
    return answerNums
  }
}

let solution = Solution()
let answer = solution.singleNumber([1,2,1,3,2,5])
let answer2 = solution.singleNumber([-1,0])
print(answer, answer2)

// result Runtime: 58ms, Memory: 14.6 MB
