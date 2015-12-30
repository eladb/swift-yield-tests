#!/usr/bin/env swiftc -dump-parse

/// (source_file
///   (func_decl "test5()" type='<null type>'
///     (body_params
///       (pattern_tuple names=))
///     (brace_stmt
///       (return_stmt
///         (yield_expr type='<null>'
///           (sequence_expr type='<null>'
///             (integer_literal_expr type='<null>' value=12)
///             (unresolved_decl_ref_expr type='<null>' name=* specialized=no)
///             (integer_literal_expr type='<null>' value=3)))))))
func test5() {
    return yield 12 * 3
}
