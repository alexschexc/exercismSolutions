const std = @import("std");

pub fn isPangram(str: []const u8) bool {
    const BitSet = std.bit_set.StaticBitSet(26);
    var seen = BitSet.initEmpty();

    for (str) |c| {
        const idx = switch(c) {
            'a'...'z' => |ch| ch - 'a',
            'A'...'Z' => |ch| ch - 'A',
            else => continue,
        };

        if (!seen.isSet(idx)) {
            seen.set(idx);
            if (seen.count() == 26) return true;
        }
    }

    return seen.count() == 26;
}
