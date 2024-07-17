// Code generated by protoc-gen-zig
///! package google.protobuf
const std = @import("std");
const Allocator = std.mem.Allocator;
const ArrayListU = std.ArrayListUnmanaged;

const protobuf = @import("protobuf");
const ManagedString = protobuf.ManagedString;
const fd = protobuf.fd;

test {
    std.testing.refAllDeclsRecursive(@This());
}

pub const FileDescriptorSet = struct {
    file: ArrayListU(FileDescriptorProto) = .{},

    pub const _desc_table = .{
        .file = fd(1, .{ .List = .{ .SubMessage = {} } }),
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const FileDescriptorProto = struct {
    name: ?ManagedString = null,
    package: ?ManagedString = null,
    dependency: ArrayListU(ManagedString) = .{},
    public_dependency: ArrayListU(i32) = .{},
    weak_dependency: ArrayListU(i32) = .{},
    message_type: ArrayListU(DescriptorProto) = .{},
    enum_type: ArrayListU(EnumDescriptorProto) = .{},
    service: ArrayListU(ServiceDescriptorProto) = .{},
    extension: ArrayListU(FieldDescriptorProto) = .{},
    options: ?FileOptions = null,
    source_code_info: ?SourceCodeInfo = null,
    syntax: ?ManagedString = null,
    edition: ?ManagedString = null,

    pub const _desc_table = .{
        .name = fd(1, .String),
        .package = fd(2, .String),
        .dependency = fd(3, .{ .List = .String }),
        .public_dependency = fd(10, .{ .List = .{ .Varint = .Simple } }),
        .weak_dependency = fd(11, .{ .List = .{ .Varint = .Simple } }),
        .message_type = fd(4, .{ .List = .{ .SubMessage = {} } }),
        .enum_type = fd(5, .{ .List = .{ .SubMessage = {} } }),
        .service = fd(6, .{ .List = .{ .SubMessage = {} } }),
        .extension = fd(7, .{ .List = .{ .SubMessage = {} } }),
        .options = fd(8, .{ .SubMessage = {} }),
        .source_code_info = fd(9, .{ .SubMessage = {} }),
        .syntax = fd(12, .String),
        .edition = fd(13, .String),
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const DescriptorProto = struct {
    name: ?ManagedString = null,
    field: ArrayListU(FieldDescriptorProto) = .{},
    extension: ArrayListU(FieldDescriptorProto) = .{},
    nested_type: ArrayListU(DescriptorProto) = .{},
    enum_type: ArrayListU(EnumDescriptorProto) = .{},
    extension_range: ArrayListU(DescriptorProto.ExtensionRange) = .{},
    oneof_decl: ArrayListU(OneofDescriptorProto) = .{},
    options: ?MessageOptions = null,
    reserved_range: ArrayListU(DescriptorProto.ReservedRange) = .{},
    reserved_name: ArrayListU(ManagedString) = .{},

    pub const _desc_table = .{
        .name = fd(1, .String),
        .field = fd(2, .{ .List = .{ .SubMessage = {} } }),
        .extension = fd(6, .{ .List = .{ .SubMessage = {} } }),
        .nested_type = fd(3, .{ .List = .{ .SubMessage = {} } }),
        .enum_type = fd(4, .{ .List = .{ .SubMessage = {} } }),
        .extension_range = fd(5, .{ .List = .{ .SubMessage = {} } }),
        .oneof_decl = fd(8, .{ .List = .{ .SubMessage = {} } }),
        .options = fd(7, .{ .SubMessage = {} }),
        .reserved_range = fd(9, .{ .List = .{ .SubMessage = {} } }),
        .reserved_name = fd(10, .{ .List = .String }),
    };

    pub const ExtensionRange = struct {
        start: ?i32 = null,
        end: ?i32 = null,
        options: ?ExtensionRangeOptions = null,

        pub const _desc_table = .{
            .start = fd(1, .{ .Varint = .Simple }),
            .end = fd(2, .{ .Varint = .Simple }),
            .options = fd(3, .{ .SubMessage = {} }),
        };

        pub usingnamespace protobuf.MessageMixins(@This());
    };

    pub const ReservedRange = struct {
        start: ?i32 = null,
        end: ?i32 = null,

        pub const _desc_table = .{
            .start = fd(1, .{ .Varint = .Simple }),
            .end = fd(2, .{ .Varint = .Simple }),
        };

        pub usingnamespace protobuf.MessageMixins(@This());
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const ExtensionRangeOptions = struct {
    uninterpreted_option: ArrayListU(UninterpretedOption) = .{},
    declaration: ArrayListU(ExtensionRangeOptions.Declaration) = .{},
    verification: ?ExtensionRangeOptions.VerificationState = .UNVERIFIED,

    pub const _desc_table = .{
        .uninterpreted_option = fd(999, .{ .List = .{ .SubMessage = {} } }),
        .declaration = fd(2, .{ .List = .{ .SubMessage = {} } }),
        .verification = fd(3, .{ .Varint = .Simple }),
    };

    pub const VerificationState = enum(i32) {
        DECLARATION = 0,
        UNVERIFIED = 1,
        _,
    };

    pub const Declaration = struct {
        number: ?i32 = null,
        full_name: ?ManagedString = null,
        type: ?ManagedString = null,
        is_repeated: ?bool = null,
        reserved: ?bool = null,
        repeated: ?bool = null,

        pub const _desc_table = .{
            .number = fd(1, .{ .Varint = .Simple }),
            .full_name = fd(2, .String),
            .type = fd(3, .String),
            .is_repeated = fd(4, .{ .Varint = .Simple }),
            .reserved = fd(5, .{ .Varint = .Simple }),
            .repeated = fd(6, .{ .Varint = .Simple }),
        };

        pub usingnamespace protobuf.MessageMixins(@This());
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const FieldDescriptorProto = struct {
    name: ?ManagedString = null,
    number: ?i32 = null,
    label: ?FieldDescriptorProto.Label = null,
    type: ?FieldDescriptorProto.Type = null,
    type_name: ?ManagedString = null,
    extendee: ?ManagedString = null,
    default_value: ?ManagedString = null,
    oneof_index: ?i32 = null,
    json_name: ?ManagedString = null,
    options: ?FieldOptions = null,
    proto3_optional: ?bool = null,

    pub const _desc_table = .{
        .name = fd(1, .String),
        .number = fd(3, .{ .Varint = .Simple }),
        .label = fd(4, .{ .Varint = .Simple }),
        .type = fd(5, .{ .Varint = .Simple }),
        .type_name = fd(6, .String),
        .extendee = fd(2, .String),
        .default_value = fd(7, .String),
        .oneof_index = fd(9, .{ .Varint = .Simple }),
        .json_name = fd(10, .String),
        .options = fd(8, .{ .SubMessage = {} }),
        .proto3_optional = fd(17, .{ .Varint = .Simple }),
    };

    pub const Type = enum(i32) {
        TYPE_DOUBLE = 1,
        TYPE_FLOAT = 2,
        TYPE_INT64 = 3,
        TYPE_UINT64 = 4,
        TYPE_INT32 = 5,
        TYPE_FIXED64 = 6,
        TYPE_FIXED32 = 7,
        TYPE_BOOL = 8,
        TYPE_STRING = 9,
        TYPE_GROUP = 10,
        TYPE_MESSAGE = 11,
        TYPE_BYTES = 12,
        TYPE_UINT32 = 13,
        TYPE_ENUM = 14,
        TYPE_SFIXED32 = 15,
        TYPE_SFIXED64 = 16,
        TYPE_SINT32 = 17,
        TYPE_SINT64 = 18,
        _,
    };

    pub const Label = enum(i32) {
        LABEL_OPTIONAL = 1,
        LABEL_REQUIRED = 2,
        LABEL_REPEATED = 3,
        _,
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const OneofDescriptorProto = struct {
    name: ?ManagedString = null,
    options: ?OneofOptions = null,

    pub const _desc_table = .{
        .name = fd(1, .String),
        .options = fd(2, .{ .SubMessage = {} }),
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const EnumDescriptorProto = struct {
    name: ?ManagedString = null,
    value: ArrayListU(EnumValueDescriptorProto) = .{},
    options: ?EnumOptions = null,
    reserved_range: ArrayListU(EnumDescriptorProto.EnumReservedRange) = .{},
    reserved_name: ArrayListU(ManagedString) = .{},

    pub const _desc_table = .{
        .name = fd(1, .String),
        .value = fd(2, .{ .List = .{ .SubMessage = {} } }),
        .options = fd(3, .{ .SubMessage = {} }),
        .reserved_range = fd(4, .{ .List = .{ .SubMessage = {} } }),
        .reserved_name = fd(5, .{ .List = .String }),
    };

    pub const EnumReservedRange = struct {
        start: ?i32 = null,
        end: ?i32 = null,

        pub const _desc_table = .{
            .start = fd(1, .{ .Varint = .Simple }),
            .end = fd(2, .{ .Varint = .Simple }),
        };

        pub usingnamespace protobuf.MessageMixins(@This());
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const EnumValueDescriptorProto = struct {
    name: ?ManagedString = null,
    number: ?i32 = null,
    options: ?EnumValueOptions = null,

    pub const _desc_table = .{
        .name = fd(1, .String),
        .number = fd(2, .{ .Varint = .Simple }),
        .options = fd(3, .{ .SubMessage = {} }),
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const ServiceDescriptorProto = struct {
    name: ?ManagedString = null,
    method: ArrayListU(MethodDescriptorProto) = .{},
    options: ?ServiceOptions = null,

    pub const _desc_table = .{
        .name = fd(1, .String),
        .method = fd(2, .{ .List = .{ .SubMessage = {} } }),
        .options = fd(3, .{ .SubMessage = {} }),
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const MethodDescriptorProto = struct {
    name: ?ManagedString = null,
    input_type: ?ManagedString = null,
    output_type: ?ManagedString = null,
    options: ?MethodOptions = null,
    client_streaming: ?bool = false,
    server_streaming: ?bool = false,

    pub const _desc_table = .{
        .name = fd(1, .String),
        .input_type = fd(2, .String),
        .output_type = fd(3, .String),
        .options = fd(4, .{ .SubMessage = {} }),
        .client_streaming = fd(5, .{ .Varint = .Simple }),
        .server_streaming = fd(6, .{ .Varint = .Simple }),
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const FileOptions = struct {
    java_package: ?ManagedString = null,
    java_outer_classname: ?ManagedString = null,
    java_multiple_files: ?bool = false,
    java_generate_equals_and_hash: ?bool = null,
    java_string_check_utf8: ?bool = false,
    optimize_for: ?FileOptions.OptimizeMode = .SPEED,
    go_package: ?ManagedString = null,
    cc_generic_services: ?bool = false,
    java_generic_services: ?bool = false,
    py_generic_services: ?bool = false,
    php_generic_services: ?bool = false,
    deprecated: ?bool = false,
    cc_enable_arenas: ?bool = true,
    objc_class_prefix: ?ManagedString = null,
    csharp_namespace: ?ManagedString = null,
    swift_prefix: ?ManagedString = null,
    php_class_prefix: ?ManagedString = null,
    php_namespace: ?ManagedString = null,
    php_metadata_namespace: ?ManagedString = null,
    ruby_package: ?ManagedString = null,
    uninterpreted_option: ArrayListU(UninterpretedOption) = .{},

    pub const _desc_table = .{
        .java_package = fd(1, .String),
        .java_outer_classname = fd(8, .String),
        .java_multiple_files = fd(10, .{ .Varint = .Simple }),
        .java_generate_equals_and_hash = fd(20, .{ .Varint = .Simple }),
        .java_string_check_utf8 = fd(27, .{ .Varint = .Simple }),
        .optimize_for = fd(9, .{ .Varint = .Simple }),
        .go_package = fd(11, .String),
        .cc_generic_services = fd(16, .{ .Varint = .Simple }),
        .java_generic_services = fd(17, .{ .Varint = .Simple }),
        .py_generic_services = fd(18, .{ .Varint = .Simple }),
        .php_generic_services = fd(42, .{ .Varint = .Simple }),
        .deprecated = fd(23, .{ .Varint = .Simple }),
        .cc_enable_arenas = fd(31, .{ .Varint = .Simple }),
        .objc_class_prefix = fd(36, .String),
        .csharp_namespace = fd(37, .String),
        .swift_prefix = fd(39, .String),
        .php_class_prefix = fd(40, .String),
        .php_namespace = fd(41, .String),
        .php_metadata_namespace = fd(44, .String),
        .ruby_package = fd(45, .String),
        .uninterpreted_option = fd(999, .{ .List = .{ .SubMessage = {} } }),
    };

    pub const OptimizeMode = enum(i32) {
        SPEED = 1,
        CODE_SIZE = 2,
        LITE_RUNTIME = 3,
        _,
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const MessageOptions = struct {
    message_set_wire_format: ?bool = false,
    no_standard_descriptor_accessor: ?bool = false,
    deprecated: ?bool = false,
    map_entry: ?bool = null,
    deprecated_legacy_json_field_conflicts: ?bool = null,
    uninterpreted_option: ArrayListU(UninterpretedOption) = .{},

    pub const _desc_table = .{
        .message_set_wire_format = fd(1, .{ .Varint = .Simple }),
        .no_standard_descriptor_accessor = fd(2, .{ .Varint = .Simple }),
        .deprecated = fd(3, .{ .Varint = .Simple }),
        .map_entry = fd(7, .{ .Varint = .Simple }),
        .deprecated_legacy_json_field_conflicts = fd(11, .{ .Varint = .Simple }),
        .uninterpreted_option = fd(999, .{ .List = .{ .SubMessage = {} } }),
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const FieldOptions = struct {
    ctype: ?FieldOptions.CType = .STRING,
    @"packed": ?bool = null,
    jstype: ?FieldOptions.JSType = .JS_NORMAL,
    lazy: ?bool = false,
    unverified_lazy: ?bool = false,
    deprecated: ?bool = false,
    weak: ?bool = false,
    debug_redact: ?bool = false,
    retention: ?FieldOptions.OptionRetention = null,
    target: ?FieldOptions.OptionTargetType = null,
    targets: ArrayListU(FieldOptions.OptionTargetType) = .{},
    uninterpreted_option: ArrayListU(UninterpretedOption) = .{},

    pub const _desc_table = .{
        .ctype = fd(1, .{ .Varint = .Simple }),
        .@"packed" = fd(2, .{ .Varint = .Simple }),
        .jstype = fd(6, .{ .Varint = .Simple }),
        .lazy = fd(5, .{ .Varint = .Simple }),
        .unverified_lazy = fd(15, .{ .Varint = .Simple }),
        .deprecated = fd(3, .{ .Varint = .Simple }),
        .weak = fd(10, .{ .Varint = .Simple }),
        .debug_redact = fd(16, .{ .Varint = .Simple }),
        .retention = fd(17, .{ .Varint = .Simple }),
        .target = fd(18, .{ .Varint = .Simple }),
        .targets = fd(19, .{ .List = .{ .Varint = .Simple } }),
        .uninterpreted_option = fd(999, .{ .List = .{ .SubMessage = {} } }),
    };

    pub const CType = enum(i32) {
        STRING = 0,
        CORD = 1,
        STRING_PIECE = 2,
        _,
    };

    pub const JSType = enum(i32) {
        JS_NORMAL = 0,
        JS_STRING = 1,
        JS_NUMBER = 2,
        _,
    };

    pub const OptionRetention = enum(i32) {
        RETENTION_UNKNOWN = 0,
        RETENTION_RUNTIME = 1,
        RETENTION_SOURCE = 2,
        _,
    };

    pub const OptionTargetType = enum(i32) {
        TARGET_TYPE_UNKNOWN = 0,
        TARGET_TYPE_FILE = 1,
        TARGET_TYPE_EXTENSION_RANGE = 2,
        TARGET_TYPE_MESSAGE = 3,
        TARGET_TYPE_FIELD = 4,
        TARGET_TYPE_ONEOF = 5,
        TARGET_TYPE_ENUM = 6,
        TARGET_TYPE_ENUM_ENTRY = 7,
        TARGET_TYPE_SERVICE = 8,
        TARGET_TYPE_METHOD = 9,
        _,
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const OneofOptions = struct {
    uninterpreted_option: ArrayListU(UninterpretedOption) = .{},

    pub const _desc_table = .{
        .uninterpreted_option = fd(999, .{ .List = .{ .SubMessage = {} } }),
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const EnumOptions = struct {
    allow_alias: ?bool = null,
    deprecated: ?bool = false,
    deprecated_legacy_json_field_conflicts: ?bool = null,
    uninterpreted_option: ArrayListU(UninterpretedOption) = .{},

    pub const _desc_table = .{
        .allow_alias = fd(2, .{ .Varint = .Simple }),
        .deprecated = fd(3, .{ .Varint = .Simple }),
        .deprecated_legacy_json_field_conflicts = fd(6, .{ .Varint = .Simple }),
        .uninterpreted_option = fd(999, .{ .List = .{ .SubMessage = {} } }),
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const EnumValueOptions = struct {
    deprecated: ?bool = false,
    uninterpreted_option: ArrayListU(UninterpretedOption) = .{},

    pub const _desc_table = .{
        .deprecated = fd(1, .{ .Varint = .Simple }),
        .uninterpreted_option = fd(999, .{ .List = .{ .SubMessage = {} } }),
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const ServiceOptions = struct {
    deprecated: ?bool = false,
    uninterpreted_option: ArrayListU(UninterpretedOption) = .{},

    pub const _desc_table = .{
        .deprecated = fd(33, .{ .Varint = .Simple }),
        .uninterpreted_option = fd(999, .{ .List = .{ .SubMessage = {} } }),
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const MethodOptions = struct {
    deprecated: ?bool = false,
    idempotency_level: ?MethodOptions.IdempotencyLevel = .IDEMPOTENCY_UNKNOWN,
    uninterpreted_option: ArrayListU(UninterpretedOption) = .{},

    pub const _desc_table = .{
        .deprecated = fd(33, .{ .Varint = .Simple }),
        .idempotency_level = fd(34, .{ .Varint = .Simple }),
        .uninterpreted_option = fd(999, .{ .List = .{ .SubMessage = {} } }),
    };

    pub const IdempotencyLevel = enum(i32) {
        IDEMPOTENCY_UNKNOWN = 0,
        NO_SIDE_EFFECTS = 1,
        IDEMPOTENT = 2,
        _,
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const UninterpretedOption = struct {
    name: ArrayListU(UninterpretedOption.NamePart) = .{},
    identifier_value: ?ManagedString = null,
    positive_int_value: ?u64 = null,
    negative_int_value: ?i64 = null,
    double_value: ?f64 = null,
    string_value: ?ManagedString = null,
    aggregate_value: ?ManagedString = null,

    pub const _desc_table = .{
        .name = fd(2, .{ .List = .{ .SubMessage = {} } }),
        .identifier_value = fd(3, .String),
        .positive_int_value = fd(4, .{ .Varint = .Simple }),
        .negative_int_value = fd(5, .{ .Varint = .Simple }),
        .double_value = fd(6, .{ .FixedInt = .I64 }),
        .string_value = fd(7, .String),
        .aggregate_value = fd(8, .String),
    };

    pub const NamePart = struct {
        name_part: ManagedString,
        is_extension: bool,

        pub const _desc_table = .{
            .name_part = fd(1, .String),
            .is_extension = fd(2, .{ .Varint = .Simple }),
        };

        pub usingnamespace protobuf.MessageMixins(@This());
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const SourceCodeInfo = struct {
    location: ArrayListU(SourceCodeInfo.Location) = .{},

    pub const _desc_table = .{
        .location = fd(1, .{ .List = .{ .SubMessage = {} } }),
    };

    pub const Location = struct {
        path: ArrayListU(i32) = .{},
        span: ArrayListU(i32) = .{},
        leading_comments: ?ManagedString = null,
        trailing_comments: ?ManagedString = null,
        leading_detached_comments: ArrayListU(ManagedString) = .{},

        pub const _desc_table = .{
            .path = fd(1, .{ .PackedList = .{ .Varint = .Simple } }),
            .span = fd(2, .{ .PackedList = .{ .Varint = .Simple } }),
            .leading_comments = fd(3, .String),
            .trailing_comments = fd(4, .String),
            .leading_detached_comments = fd(6, .{ .List = .String }),
        };

        pub usingnamespace protobuf.MessageMixins(@This());
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};

pub const GeneratedCodeInfo = struct {
    annotation: ArrayListU(GeneratedCodeInfo.Annotation) = .{},

    pub const _desc_table = .{
        .annotation = fd(1, .{ .List = .{ .SubMessage = {} } }),
    };

    pub const Annotation = struct {
        path: ArrayListU(i32) = .{},
        source_file: ?ManagedString = null,
        begin: ?i32 = null,
        end: ?i32 = null,
        semantic: ?GeneratedCodeInfo.Annotation.Semantic = null,

        pub const _desc_table = .{
            .path = fd(1, .{ .PackedList = .{ .Varint = .Simple } }),
            .source_file = fd(2, .String),
            .begin = fd(3, .{ .Varint = .Simple }),
            .end = fd(4, .{ .Varint = .Simple }),
            .semantic = fd(5, .{ .Varint = .Simple }),
        };

        pub const Semantic = enum(i32) {
            NONE = 0,
            SET = 1,
            ALIAS = 2,
            _,
        };

        pub usingnamespace protobuf.MessageMixins(@This());
    };

    pub usingnamespace protobuf.MessageMixins(@This());
};
