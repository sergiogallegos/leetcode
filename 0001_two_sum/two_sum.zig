const std = @import("std");

pub fn main() void {
    const allocator = std.heap.page_allocator;

    testCase(allocator, &.{2, 7, 11, 15}, 9, .{0, 1});
    testCase(allocator, &.{3, 2, 4}, 6, .{1, 2});
    testCase(allocator, &.{3, 3}, 6, .{0, 1});

    std.debug.print("All test cases passed(zig).\n", .{});
}

fn findTwoSum(allocator: std.mem.Allocator, nums: []const i32, target: i32) ?[2]usize {
    var map = std.AutoHashMap(i32, usize).init(allocator);
    defer map.deinit();

    for (nums, 0..) |num, i| {
        const complement = target - num;
        if (map.get(complement)) |j| {
            return .{j, i};
        }
        map.put(num, i) catch return null;
    }

    return null;
}

fn arraysEqual(a: [2]usize, b: [2]usize) bool {
    return (a[0] == b[0] and a[1] == b[1]) or (a[0] == b[1] and a[1] == b[0]);
}

fn testCase(allocator: std.mem.Allocator, nums: []const i32, target: i32, expected: [2]usize) void {
    if (findTwoSum(allocator, nums, target)) |result| {
        std.debug.assert(arraysEqual(result, expected));
    } else {
        @panic("Test failed: No result found");
    }
}



// Problem Type: Array + Hash Map (Index Lookup)
// Strategy: Iterate over array, track complement using AutoHashMap from std lib
// Key Zig Concepts: slices, for-loops with index, optional return types, allocators, error handling
// Time Complexity: O(n)
