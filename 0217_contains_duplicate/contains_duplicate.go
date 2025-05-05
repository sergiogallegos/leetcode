package main

import (
	"fmt"
	"os"
)

func containsDuplicate(nums []int) bool {
	seen := make(map[int]bool)
	for _, num := range nums {
		if seen[num] {
			return true
		}
		seen[num] = true
	}
	return false
}

func main() {
	if !containsDuplicate([]int{1,2,3,1}) {
		fmt.Println("Test 1 failed")
		os.Exit(1)
	}
	if containsDuplicate([]int{1,2,3,4}) {
		fmt.Println("Test 2 failed")
		os.Exit(1)
	}
	if !containsDuplicate([]int{1,1,1,3,3,4,3,2,4,2}) {
		fmt.Println("Test 3 failed")
		os.Exit(1)
	}
	fmt.Println("All test cases passed (Go).")
}

/*
- Problem Type: Array + Set Detection
- Strategy: Track seen values using a map
- Key Go Concepts: maps as sets, range loop
- Time Complexity: O(n)
*/
