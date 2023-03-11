class Solution1 {
    func prisonAfterNDays(_ cells: [Int], _ n: Int) -> [Int] {
        var lastStepCells = cells
        var numberCells = cells
        if n == 0 {
            return cells
        } else {
            for _ in 1 ... n {
                numberCells[0] = 0
                numberCells[7] = 0
                for indexNumber in 1 ... 6 {
                    if lastStepCells[indexNumber - 1] == lastStepCells[indexNumber + 1] {
                        numberCells[indexNumber] = 1
                    } else {
                        numberCells[indexNumber] = 0
                    }
                    if indexNumber == 6 {
                        lastStepCells = numberCells
                    }
                }
            }
            return numberCells
        }
    }
}

class Solution2 {
    func prisonAfterNDays(_ cells: [Int], _ n: Int) -> [Int] {
        var lastStepCells = cells
        var numberCells = cells
        var overTheCycle = false
        if n == 0 {
            return cells
        } else {
            var aCycleArray = [[Int]]()
            for _ in 1 ... n {
                numberCells[0] = 0
                numberCells[7] = 0
                for indexNumber in 1 ... 6 {
                    if lastStepCells[indexNumber - 1] == lastStepCells[indexNumber + 1] {
                        numberCells[indexNumber] = 1
                    } else {
                        numberCells[indexNumber] = 0
                    }
                    if indexNumber == 6 {
                        // 如果完全不變
                        if lastStepCells == numberCells {
                            return numberCells
                        }
                        lastStepCells = numberCells
                    }
                }
                if aCycleArray.count == 0 {
                    aCycleArray.append(numberCells)
                } else {
                    if aCycleArray[0] == numberCells {
                        overTheCycle = true
                        break // 停止迴圈
                    } else {
                        aCycleArray.append(numberCells)
                    }
                }
            }
            // 脫離迴圈
            if overTheCycle {
                // 算餘數
                let aCycle = aCycleArray.count
                print("amount", aCycle)
                let leftNumber = n % aCycle
                print(leftNumber)
                // 避免整除
                if leftNumber == 0 {
                    return aCycleArray.last!
                }
                return aCycleArray[leftNumber - 1]
            }
            return numberCells
        }
    }
}

let solution1 = Solution1()
let solution2 = Solution2()
solution1.prisonAfterNDays([1,0,0,0,1,1,1,1], 3)
solution1.prisonAfterNDays([0,1,0,1,1,0,0,1], 7)
solution2.prisonAfterNDays([1,1,0,1,1,0,1,1], 6)
solution2.prisonAfterNDays([1,1,0,1,1,0,0,1], 300663720)
