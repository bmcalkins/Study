//
//  Tester.swift
//  Array
//
//  Created by Luat on 5/19/21.
//

import Foundation

class Tester {
    static let shared = Tester()
    
    /// 1. Write a function that takes an array of numbers and returns an array with each of the numbers multiplied by 2
    func multiplyByTwo(numbers original: [Int]) -> [Int]{
        let augmentedArray = original.map { ele in
            return ele * 2
        }
      return augmentedArray
    }

    /// 2. Write a function to return the last half of the array, not including the median
    func lastHalf(array: [Int]) -> [Int] {
        let midpoint = array.count / 2
        let secondHalf = array.enumerated().filter { (index, value) in
            index > midpoint
        }
     return   secondHalf  // [ (index, value) ] need to convert to [value]
    }
    
   
    /// 3. Write a function that can creates an array populated with integers going from start (input) to end (input)
    func createArray(from start: Int, to end: Int) -> [Int] {
        let rangeArray = Array(10...13)
        for e in rangeArray {
            print(e)
        }
        
      return []
    }

    /**
        4. Create this 2-D array
        [[1,2,3],
        [4,5,6],
        [7,8,9]]
     */
    func create2DArray() -> [[Int]] {
        let intArray = [1...9]
        let perRow = 3
        let int2dArray: [[Int]] = stride(from: 0, to: intArray.count, by: perRow).map {
            Array(intArray[$0..<$0+perRow])
        }
      return [[int2dArray]]
    }

    /// 5. Write a function that returns the number of pairs of elements that sums up to 0
    /// Input [1,2,3,-1,-2,-4] -> Output 2
    func findPairs(nums: [Int]) -> Int {
        let sortedArray = nums.sorted()
        var leftIndex = 0
        var rightIndex = sortedArray.count - 1
        
        while leftIndex < rightIndex {
            let leftElement = sortedArray[leftIndex]
            let rightElement = sortedArray[rightIndex]
            let currentSum = leftElement + rightElement
            
            if currentSum == 0 {
                print("\(leftElement), \(rightElement)")
                break
            } else if currentSum != 0 {
                leftIndex += 1
            } else {
                rightIndex -= 1
            }
        }
     print(findPairs)
    }


    /// 6. Returns an array of indexes where the char occurs in input word
    func positionsOf(character: Character, in word: String) -> [Int] {

        return []
    }
    
    /**
        7. Scenario: There is a conference room, and an array of `I`s and `O`s.
        `I` means a person enters the room and needs a chair.
        `O` means a person leaves the room and a chair opens up.
        Find the maximum number of chairs required to allow everyone (at any point) to have a seat
        Ex. [ I, I, O] -> 2
     */
    func minimumChairs(array: [Character]) -> Int {
        let occupiedChair: Character = "I"
        let emptyChair: Character = "O"
        var count = 0
        for ele in array {
            if ele == occupiedChair {
                count += 1
            } else if  ele == emptyChair {
                count -= 1
            }
        }
        
        return 0
    }
    
    /// 8. Pig latin but with words separated by spaces
    func pigLatinSentence(sentence: String) -> String {
        return ""
    }
    
    
    /**
        9. Find the best day to first BUY and then a day occuring after that day to SELL. Return the maximum profit (buy price - sell price)
        var prices = [7,1,5,3,6,4] -> returns 5
     */
    func maxProfit(array: [Int]) -> Int {
        
        return 0
    }
    
    /**
        10. Input: array of integers: [1, 4, 8, 4] with 1 having the highest priority.
        Output: reduce the distance bettwen priorities but keep the same priority ordering
        [1, 4, 8, 4] -> [1, 2, 3, 2]
     */
    func reduceDistanceKeepPriority(array: [Int]) -> [Int] {
        
        return []
    }
}
