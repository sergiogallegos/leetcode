struct Solution;

impl Solution {
    pub fn max_subarray(nums: Vec<i32>) -> i32 {
        let mut max_so_far = nums[0];
        let mut max_ending_here = nums[0];
        
        for &num in nums.iter().skip(1) {
            max_ending_here = num.max(max_ending_here + num);
            max_so_far = max_so_far.max(max_ending_here);
        }
        
        max_so_far
    }
}

fn main() {
    
    // Test case 1
    let nums1 = vec![-2, 1, -3, 4, -1, 2, 1, -5, 4];
    assert_eq!(Solution::max_subarray(nums1), 6);
    
    // Test case 2
    let nums2 = vec![1];
    assert_eq!(Solution::max_subarray(nums2), 1);
    
    // Test case 3
    let nums3 = vec![-2, -1, -3];
    assert_eq!(Solution::max_subarray(nums3), -1);
    
    println!("All test cases passed(Rust).");
}

/*
 - Problem Type: Array + Dynamic Programming
 - Strategy: Use Kadane's algorithm to track max sum ending at each position
 - Key Rust Concepts: Vec, iter, skip, max method
 - Time Complexity: O(n)
 */
