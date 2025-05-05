use std::collections::HashSet;

struct Solution;

impl Solution {
    pub fn contains_duplicate(nums: Vec<i32>) -> bool {
        let mut set: HashSet<i32> = HashSet::new();
        
        for &num in nums.iter() {
            if !set.insert(num) {
                return true;
            }
        }
        
        false
    }
}

fn main() {
    
    // Test case 1
    let nums1 = vec![1, 2, 3, 1];
    assert_eq!(Solution::contains_duplicate(nums1), true);
    
    // Test case 2
    let nums2 = vec![1, 2, 3, 4];
    assert_eq!(Solution::contains_duplicate(nums2), false);
    
    // Test case 3
    let nums3 = vec![1, 1, 1, 3, 3, 4, 3, 2, 4, 2];
    assert_eq!(Solution::contains_duplicate(nums3), true);
    
    println!("All test cases passed(Rust).");
}

/*
 - Problem Type: Array + Hash Set
 - Strategy: Use HashSet to track seen elements
 - Key Rust Concepts: Vec, HashSet, iter
 - Time Complexity: O(n)
 */
