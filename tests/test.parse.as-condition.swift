#!/usr/bin/env swiftc -dump-parse

/// (source_file
///   (func_decl "test4()" type='<null type>'
///     (body_params
///       (pattern_tuple names=))
///     (brace_stmt
///       (if_stmt
///         (paren_expr type='<null>'
///           (yield_expr type='<null>'
///             (call_expr type='<null>'
///               (unresolved_decl_ref_expr type='<null>' name=foo specialized=no)
///               (tuple_expr type='<null>'))))
///         (brace_stmt
///           (call_expr type='<null>'
///             (unresolved_decl_ref_expr type='<null>' name=print specialized=no)
///             (paren_expr type='<null>'
///               (string_literal_expr type='<null>' encoding=utf8 value="yes"))))))))
func test4() {
    if (yield foo()) {
        print("yes")
    }
}
