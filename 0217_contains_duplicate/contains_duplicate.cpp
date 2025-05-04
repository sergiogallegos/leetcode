#include <iostream>
#include <vector>
#include <unordered_set>
#include <cassert>

using namespace std;

class Solution {
  public:
	bool containsDuplicate(vector<int>& nums) {
	  unordered_set<int> s;
	  for (int num : nums) {
		if (s.count(num)) {
		  return true;
		}
		s.insert(num);
	  }
	  return false;
	}
};


int main() {
  
  Solution s;

  // Test case 1
  vector<int> nums1 = {1,2,3,1};
  assert(s.containsDuplicate(nums1) == true);
 
  // Test case 2
  vector<int> nums2 = {1,2,3,4};
  assert(s.containsDuplicate(nums2) == false);
  
  // Test case 3
  vector<int> nums3 = {1,1,1,3,3,4,3,2,4,2};
  assert(s.containsDuplicate(nums3) == true); 

  cout << "All test cases passed." << endl;
  
  return 0;
}


/*
 - Problem Type: Array + Hash Set
 - Strategy: Use unordered_set to track seen elements
 - Key C++ Concepts: vector, unordered_set
 - Time Complexity: O(n)
 */ 
