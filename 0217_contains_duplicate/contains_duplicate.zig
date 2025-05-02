const std = @import("std");

pub fn main() void {
    const allocator = std.heap.page_allocator;

    testCase(allocator, &.{1, 2, 3, 1}, true);
    testCase(allocator, &.{1, 2, 3, 4}, false);
    testCase(allocator, &.{1, 1, 1, 3, 3, 4, 3, 2, 4, 2}, true);

    std.debug.print("All test cases passed(zig).\n", .{});
}

fn containsDuplicate(allocator: std.mem.Allocator, nums: []const i32) bool {
    var set = std.AutoHashMap(i32, void).init(allocator);
    defer set.deinit();

    for (nums) |num| {
        if (set.contains(num)) {
            return true;
        }
        set.put(num, {}) catch return true; // consider duplicate if allocation fails
    }
    return false;
}

fn testCase(allocator: std.mem.Allocator, nums: []const i32, expected: bool) void {
    const result = containsDuplicate(allocator, nums);
    std.debug.assert(result == expected);
}


// Problem Type: Hash Set (Duplicate Detection)
// Strategy: Insert each number into a HashSet, return true if already exists
// Key Zig Concepts: AutoHashMap with void values, allocators, error-aware put()
// Time Complexity: O(n)
