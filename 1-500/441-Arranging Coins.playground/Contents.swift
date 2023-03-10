class Solution {
    func arrangeCoins(_ n: Int) -> Int {
        var rowCoinAmount = 1
        var leftCoin = n
        while leftCoin > rowCoinAmount {
            leftCoin = leftCoin - rowCoinAmount
            rowCoinAmount += 1
        }
        if rowCoinAmount == leftCoin {
            return rowCoinAmount
        }
        return rowCoinAmount - 1
    }
}
