pub fn isPangram(str: []const u8) bool {
    var seen: [26]bool = .{false} ** 26;
    var unique_count: usize = 0;

    for (str) |c| {
        const idx_or_skip = switch(c) {
            'a'...'z' => |ch| ch - 'a',
            'A'...'Z' => |ch| ch - 'A',
            else => continue,
        };

        const idx = idx_or_skip;
        if (!seen[idx]) {
            seen[idx] = true;
            unique_count += 1;
            if (unique_count >= 26) return true;
        }
    }

    return unique_count >= 26;
}
