const std = @import("std");

pub fn isPangram(str: []const u8) bool {
    var seen: u32 = 0;

    for (str) |c| {
        const idx: u5 = @intCast(switch (c) {
            'a'...'z' => |ch| ch - 'a',
            'A'...'Z' => |ch| ch - 'A',
            else => continue,
        });

        seen |= @as(u32, 1) << idx;
    }
    return seen == (1 << 26) - 1;
}
