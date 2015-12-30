#!/usr/bin/env swiftc -dump-parse

/// (source_file
///   (func_decl "test2()" type='<null type>'
///     (body_params
///       (pattern_tuple names=))
///     (brace_stmt
///       (pattern_binding_decl
///         (pattern_named 'foo')
///         (yield_expr type='<null>'
///           (integer_literal_expr type='<null>' value=1234)))
///
///       (var_decl "foo" type='<null type>' storage_kind=stored)
///
///       (call_expr type='<null>'
///         (unresolved_decl_ref_expr type='<null>' name=print specialized=no)
///         (paren_expr type='<null>'
///           (yield_expr type='<null>'
///             (integer_literal_expr type='<null>' value=111)))))))
func test2() {
    var foo = yield 1234
    print(yield 111)
}
