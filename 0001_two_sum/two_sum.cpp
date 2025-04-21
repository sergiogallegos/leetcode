#include <iostream>
#include <vector>
#include <unordered_map>
#include <cassert>

using namespace std;

class Solution {
  public:
	vector<int> twoSum(vector<int>& nums, int target) {
	  unordered_map<int, int> d;
	  for (int i = 0; i < nums.size(); ++i) {
		int x = target - nums[i];
		if (d.count(x)) {
		  return {d[x], i};
		}
		d[nums[i]] = i;
	  }
	  return {};
	}
};


int main() {
  
  Solution s;

  // Test case 1
  vector<int> nums1 = {2,7,11,15};
  vector<int> res1 = s.twoSum(nums1, 9);
  assert((res1 == vector<int>{0,1} || res1 == vector<int>{1,0}));

  // Test case 2
  vector<int> nums2 = {3,2,4};
  vector<int> res2 = s.twoSum(nums2, 6);
  assert((res2 == vector<int>{1,2} || res2 == vector<int>{2,1}));

  // Test case 3
  vector<int> nums3 = {3,3};
  vector<int> res3 = s.twoSum(nums3, 6);
  assert((res3 == vector<int>{0,1} || res3 == vector<int>{1,0}));

  cout << "All test cases passed." << endl;
}
