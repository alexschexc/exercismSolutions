const std = @import("std");

pub fn insertionSort(str: []u8) void {
    var i: usize = 1;
    while (i < str.len) : (i +=1){
        const key = str[i];
        var j: usize = i;
        while (j > 0 and str[j - 1] > key) : (j -= 1) {
            str[j] = str[j-1];
        }
    str[j] = key;
    }
}


pub fn isIsogram(str: []const u8) bool {
    var buf: [26]u8 = undefined;
    var counter: usize = 0;
    
    
    for (str) |c| {
        if (c == '-' or c == ' ') continue;

        std.debug.assert(
            (c >= 'A' and c <= 'Z') or
            (c >= 'a' and c <= 'z')
        );
        
        if (counter >= 26) return false;
        buf[counter] = std.ascii.toLower(c);
        counter += 1;
    }
    
    if (counter <= 1) return true;
    
    const letters = buf[0..counter];
    insertionSort(letters);

    var i: usize = 1;
    while (i < letters.len) : (i += 1) {
        if (letters[i] == letters[i - 1]) return false;
    }
    return true;
}
