
import Foundation
///  binarySearch Should take a sorted array
func binarySearch<T: Comparable>(sortedArray: [T], item: T)-> Int? {
    var low = 0
    var high = sortedArray.count - 1
    
    while low <= high  {
        let mid = (low + high) / 2
        let guess = sortedArray[mid]
        if guess == item {
            return mid
        }
        if item > guess {
            low = mid + 1

        } else if item < guess {
            high = mid - 1
        }
    }
    return nil
}

var intArray = [1, 2, 3, 4, 5, 6, 7, 8, 9, 20, 50]
var intItem = 5
print(binarySearch(sortedArray: intArray, item: intItem))
print(binarySearch(sortedArray: intArray, item: 0))

var stringArray = ["a", "b", "c", "d", "e", "f", "j", "h", "i", "j", "k"]
var stringItem = "j"

print(binarySearch(sortedArray: stringArray, item: stringItem))
print(binarySearch(sortedArray: stringArray, item: "z"))
