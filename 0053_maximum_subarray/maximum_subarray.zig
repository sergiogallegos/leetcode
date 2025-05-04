const std = @import("std");

fn maxSubArray(nums: []const i32) i32 {
    var current_sum = nums[0];
    var max_sum = nums[0];
    var i: usize = 1;

    while (i < nums.len) : (i += 1) {
        current_sum = @max(nums[i], current_sum + nums[i]);
        max_sum = @max(max_sum, current_sum);
    }

    return max_sum;
}

pub fn main() !void {
    const expect = std.testing.expect;

    const nums1 = [_]i32{ -2, 1, -3, 4, -1, 2, 1, -5, 4 };
    const nums2 = [_]i32{1};
    const nums3 = [_]i32{ 5, 4, -1, 7, 8 };

    try expect(maxSubArray(&nums1) == 6);
    try expect(maxSubArray(&nums2) == 1);
    try expect(maxSubArray(&nums3) == 23);

    std.debug.print("All test cases passed.\n", .{});
}

// - Problem Type: Array + Sliding Window (Kadane's Algorithm)
// - Strategy: Iterate through array, updating current subarray sum and tracking the global maximum
// - Key Zig Concepts: slices (`[]const i32`), error handling with `try`, `std.math.max`, and `std.testing.expect`
// - No dynamic allocation or heap usage; works purely on stack
// - Time Complexity: O(n)
