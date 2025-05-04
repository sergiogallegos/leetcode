class Solution(object):
    def maxSubArray(self, nums):
        """
        :type nums: List[int]
        :rtype: int
        """
        max_sum = current_sum = nums[0]

        for num in nums[1:]:
            current_sum = max(num, current_sum + num)
            max_sum = max(max_sum, current_sum)

        return max_sum

if __name__ == "__main__":
    
    s = Solution()

    # Test case 1
    assert Solution().maxSubArray([-2,1,-3,4,-1,2,1,-5,4]) == 6
    
    # Test case 2
    assert Solution().maxSubArray([1]) == 1
    
    # Test case 3
    assert Solution().maxSubArray([5,4,-1,7,8]) == 23

    print("All test cases passed.")

"""
- Problem Type: Array + Dynamic Programming (Prefix Sum Optimization)
- Strategy: Use Kadane's Algorithm: track current sum and max sum while iterating
- Key Python Concepts: max(), variables tracking state, linear iteration
- Time Complexity: O(n)
"""
