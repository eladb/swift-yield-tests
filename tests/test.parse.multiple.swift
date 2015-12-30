#!/usr/bin/env swiftc -dump-parse

/// (source_file
///   (func_decl "test6()" type='<null type>'
///     (body_params
///       (pattern_tuple names=))
///     (brace_stmt
///       (pattern_binding_decl
///         (pattern_named 'i')
///         (sequence_expr type='<null>'
///           (paren_expr type='<null>'
///             (yield_expr type='<null>'
///               (sequence_expr type='<null>'
///                 (integer_literal_expr type='<null>' value=10)
///                 (unresolved_decl_ref_expr type='<null>' name=* specialized=no)
///                 (integer_literal_expr type='<null>' value=2))))
///           (unresolved_decl_ref_expr type='<null>' name=+ specialized=no)
///           (paren_expr type='<null>'
///             (yield_expr type='<null>'
///               (integer_literal_expr type='<null>' value=20)))))
///
///       (var_decl "i" type='<null type>' storage_kind=stored)
/// )))
func test6() {
    var i = (yield 10 * 2) + (yield 20)
}
