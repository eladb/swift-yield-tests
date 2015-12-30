#!/usr/bin/env swiftc -dump-parse

/// (source_file
///   (func_decl "test1()" type='<null type>'
///     (body_params
///       (pattern_tuple names=))
///     (brace_stmt
///       (yield_expr type='<null>'
///         (integer_literal_expr type='<null>' value=10)))))
func test1() {
    yield 10
}
