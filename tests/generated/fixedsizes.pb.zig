// Code generated by protoc-gen-zig
///! package tests
const std = @import("std");
const Allocator = std.mem.Allocator;
const ArrayListU = std.ArrayListUnmanaged;

const protobuf = @import("protobuf");
const ManagedString = protobuf.ManagedString;
const fd = protobuf.fd;

test {
    std.testing.refAllDeclsRecursive(@This());
}

pub const FixedSizes = struct {
    sfixed64: i64 = 0,
    sfixed32: i32 = 0,
    fixed32: u32 = 0,
    fixed64: u64 = 0,
    double: f64 = 0,
    float: f32 = 0,

    pub const _desc_table = .{
        .sfixed64 = fd(1, .{ .FixedInt = .I64 }),
        .sfixed32 = fd(2, .{ .FixedInt = .I32 }),
        .fixed32 = fd(3, .{ .FixedInt = .I32 }),
        .fixed64 = fd(4, .{ .FixedInt = .I64 }),
        .double = fd(5, .{ .FixedInt = .I64 }),
        .float = fd(6, .{ .FixedInt = .I32 }),
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};
