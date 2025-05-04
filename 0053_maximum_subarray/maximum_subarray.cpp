#include <iostream>
#include <vector>
#include <cassert>
#include <algorithm>

using namespace std;

class Solution {
public:
  int maxSubArray(vector<int> &nums) {
    int max_sum = nums[0];
    int current_sum = nums[0];

    for (size_t i = 1; i < nums.size(); ++i) {
      current_sum = max(nums[i], current_sum + nums[i]);
      max_sum = max(max_sum, current_sum);
    }
    return max_sum;
  }
};

int main() {
  Solution s;

  // Test case 1
  vector<int> nums1 = {-2, 1, -3, 4, -1, 2, 1, -5, 4};
  assert(s.maxSubArray(nums1) == 6);

  // Test case 2
  vector<int> nums2 = {1};
  assert(s.maxSubArray(nums2) == 1);

  // Test case 3
  vector<int> nums3 = {5, 4, -1, 7, 8};
  assert(s.maxSubArray(nums3) == 23);

  // Test case 4
  vector<int> nums4 = {-1, -2, -3, -4};
  assert(s.maxSubArray(nums4) == -1);

  // Test case 5
  vector<int> nums5 = {-2, 1};
  assert(s.maxSubArray(nums5) == 1);

  cout << "All test cases passed." << endl;

  return 0;
}

/*
- Problem Type: Array + Dynamic Programming (Greedy Variation)
- Strategy: Kadane’s Algorithm: keep track of local and global max sum while
iterating
- Key C++ Concepts: std::vector, std::max, constant space DP
- Time Complexity: O(n)
 */
