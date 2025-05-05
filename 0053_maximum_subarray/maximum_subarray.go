package main

import (
	"fmt"
	"os"
)

func maxSubArray(nums []int) int {
	maxSum := nums[0]
	currSum := nums[0]

	for i := 1; i < len(nums); i++ {
		if currSum < 0 {
			currSum = nums[i]
		} else {
			currSum += nums[i]
		}
		if currSum > maxSum {
			maxSum = currSum
		}
	}
	return maxSum
}

func main() {
	if maxSubArray([]int{-2,1,-3,4,-1,2,1,-5,4}) != 6 {
		fmt.Println("Test 1 failed")
		os.Exit(1)
	}
	if maxSubArray([]int{1}) != 1 {
		fmt.Println("Test 2 failed")
		os.Exit(1)
	}
	if maxSubArray([]int{5,4,-1,7,8}) != 23 {
		fmt.Println("Test 3 failed")
		os.Exit(1)
	}
	fmt.Println("All test cases passed (Go).")
}

/*
- Problem Type: Array + Dynamic Programming
- Strategy: Kadane’s Algorithm (track current + max sum)
- Key Go Concepts: slices, iteration, conditional logic
- Time Complexity: O(n)
*/
