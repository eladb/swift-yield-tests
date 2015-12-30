#!/usr/bin/env swiftc -dump-parse

/// (source_file
///   (func_decl "test(_:)" type='<null type>'
///     (body_params
///       (pattern_tuple names=''
///         (pattern_typed
///           (pattern_named 'j')
///           (type_ident
///             (component id='Bool' bind=none)))))
///     (brace_stmt
///       (if_stmt
///         (declref_expr type='<null>' decl=main.(file).func decl.j@tests/test.parse.inside-condition.swift:20:11 specialized=yes)
///         (brace_stmt
///           (yield_expr type='<null>'
///             (integer_literal_expr type='<null>' value=10)))
///         (brace_stmt
///           (yield_expr type='<null>'
///             (integer_literal_expr type='<null>' value=20)))))))
func test(j: Bool) {
  if j {
    yield 10
  }
  else {
    yield 20
  }
}
