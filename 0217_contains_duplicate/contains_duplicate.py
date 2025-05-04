class Solution(object):
    def contains_duplicate(self, nums):
        """
        :type nums: List[int]
        :rtype bool
        """
        s = set()
        for num in nums:
            if num in s:
                return True
            s.add(num)
        return False

if __name__ == "__main__":
    
    s = Solution()

    # Test Case 1
    assert s.contains_duplicate([1,2,3,1]) == True

    # Test Case 2
    assert s.contains_duplicate([1,2,3,4]) == False

    # Test Case 3
    assert s.contains_duplicate([1,1,1,3,3,4,3,2,4,2]) == True

    print("All test cases passed.")


"""
- Problem Type: Array + Set
- Strategy: Track seen elements using hash set (set())
- Key Python Concepts: set()
- Time Complexity: O(n)
"""
