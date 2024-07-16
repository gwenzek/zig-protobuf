// Code generated by protoc-gen-zig
///! package google.protobuf
const std = @import("std");
const Allocator = std.mem.Allocator;
const ArrayList = std.ArrayList;

const protobuf = @import("protobuf");
const ManagedString = protobuf.ManagedString;
const fd = protobuf.fd;

test {
    std.testing.refAllDeclsRecursive(@This());
}

pub const Timestamp = struct {
    seconds: i64 = 0,
    nanos: i32 = 0,

    pub const _desc_table = .{
        .seconds = fd(1, .{ .Varint = .Simple }),
        .nanos = fd(2, .{ .Varint = .Simple }),
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};
