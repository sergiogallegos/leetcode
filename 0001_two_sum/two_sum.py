class Solution(object):
    def two_sum(self, nums, target):
        """
        :type nums: List[int]
        :type target: int
        :rtype List[int]
        """
        d = {}
        for i, num in enumerate(nums):
            x = target - num
            if x in d:
                return [d[x], i]
            d[num]=i
        return []


if __name__ == "__main__":
    
    s = Solution()

    # Test Case 1
    assert s.two_sum([2,7,11,15], 9) == [0,1]

    # Test Case 2
    assert s.two_sum([3,2,4], 6) == [2,1] or [1,2]

    # Test Case 3
    assert s.two_sum([3,3], 6) == [0,1]

    print("All test cases passed.")
