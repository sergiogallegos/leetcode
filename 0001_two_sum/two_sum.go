package main

import (
	"fmt"
	"os"
)

func twoSum(nums []int, target int) []int {
	seen := make(map[int]int)
	for i, num := range nums {
		if j, ok := seen[target-num]; ok {
			return []int{j, i}
		}
		seen[num] = i
	}
	return nil
}

func main() {
	// Test case 1
	result := twoSum([]int{2, 7, 11, 15}, 9)
	if !(result[0] == 0 && result[1] == 1) {
		fmt.Println("Test 1 failed")
		os.Exit(1)
	}

	// Test case 2
	result = twoSum([]int{3, 2, 4}, 6)
	if !(result[0] == 1 && result[1] == 2) {
		fmt.Println("Test 2 failed")
		os.Exit(1)
	}

	// Test case 3
	result = twoSum([]int{3, 3}, 6)
	if !(result[0] == 0 && result[1] == 1) {
		fmt.Println("Test 3 failed")
		os.Exit(1)
	}

	fmt.Println("All test cases passed (Go).")
}

/*
- Problem Type: Array + Hash Map
- Strategy: Use a map to track complement values while iterating
- Key Go Concepts: maps, slices, zero values
- Time Complexity: O(n)
*/
