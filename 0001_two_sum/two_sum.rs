use std::collections::HashMap;

struct Solution;

impl Solution {
    pub fn two_sum(nums: Vec<i32>, target: i32) -> Vec<i32> {
        let mut map: HashMap<i32, i32> = HashMap::new();
        
        for (i, &num) in nums.iter().enumerate() {
            let complement = target - num;
            if let Some(&j) = map.get(&complement) {
                return vec![j, i as i32];
            }
            map.insert(num, i as i32);
        }
        
        vec![]
    }
}

fn main() {
    
    // Test case 1
    let nums1 = vec![2, 7, 11, 15];
    assert_eq!(Solution::two_sum(nums1, 9), vec![0, 1]);
    
    // Test case 2
    let nums2 = vec![3, 2, 4];
    assert_eq!(Solution::two_sum(nums2, 6), vec![1, 2]);
    
    // Test case 3
    let nums3 = vec![3, 3];
    assert_eq!(Solution::two_sum(nums3, 6), vec![0, 1]);
    
    println!("All test cases passed(Rust).");
}

/*
 - Problem Type: Array + Hash Map
 - Strategy: Use HashMap to store numbers and indices, checking for complement
 - Key Rust Concepts: Vec, HashMap, enumerate, Option, vec! macro
 - Time Complexity: O(n)
 */
