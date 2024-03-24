//! Root library file that exposes the public API.

const std = @import("std");
const Divisor = @import("unsigned.zig").Divisor;

pub const DivisorU8 = Divisor(u8);
pub const DivisorU16 = Divisor(u16);
pub const DivisorU32 = Divisor(u32);
pub const DivisorU64 = Divisor(u64);
pub const DivisorU128 = Divisor(u128);
pub const DivisorUsize = Divisor(usize);

test {
    std.testing.refAllDecls(@This());
}
