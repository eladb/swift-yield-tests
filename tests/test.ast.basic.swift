#!/usr/bin/env swiftc -dump-ast

func foo(val val: String) { }

func test() {
  yield "hello"
}

/// (source_file
///
///   (func_decl "foo(val:)" type='(val: String) -> ()' access=internal
///     (body_params
///       (pattern_tuple type='(val: String)' names=val
///         (pattern_typed type='String'
///           (pattern_named type='String' 'val')
///           (type_ident
///             (component id='String' bind=Swift.(file).String)))))
///     (brace_stmt))
///
///   (func_decl "test()" type='() -> ()' access=internal
///     (body_params
///       (pattern_tuple type='()' names=))
///
///     (brace_stmt
///       (return_stmt
///         (call_expr implicit type='()' location=tests/test.ast.basic.swift:6:9 range=[tests/test.ast.basic.swift:6:9 - line:6:9] nothrow
///           (declref_expr implicit type='(val: String) -> ()' location=tests/test.ast.basic.swift:6:9 range=[tests/test.ast.basic.swift:6:9 - line:6:9] decl=main.(file).foo(val:)@tests/test.ast.basic.swift:3:6 specialized=no)
///           (tuple_expr implicit type='(val: String)' location=tests/test.ast.basic.swift:6:9 range=[tests/test.ast.basic.swift:6:9 - line:6:9] names=val
///             (call_expr implicit type='String' location=tests/test.ast.basic.swift:6:9 range=[tests/test.ast.basic.swift:6:9 - line:6:9] nothrow
///               (constructor_ref_call_expr implicit type='(_builtinStringLiteral: RawPointer, byteSize: Word, isASCII: Int1) -> String' location=tests/test.ast.basic.swift:6:9 range=[tests/test.ast.basic.swift:6:9 - line:6:9] nothrow
///                 (declref_expr implicit type='String.Type -> (_builtinStringLiteral: RawPointer, byteSize: Word, isASCII: Int1) -> String' location=tests/test.ast.basic.swift:6:9 range=[tests/test.ast.basic.swift:6:9 - line:6:9] decl=Swift.(file).String.init(_builtinStringLiteral:byteSize:isASCII:) specialized=no)
///                 (type_expr implicit type='String.Type' location=tests/test.ast.basic.swift:6:9 range=[tests/test.ast.basic.swift:6:9 - line:6:9] typerepr='String'))
///               (string_literal_expr type='(_builtinStringLiteral: Builtin.RawPointer, byteSize: Builtin.Word, isASCII: Builtin.Int1)' location=tests/test.ast.basic.swift:6:9 range=[tests/test.ast.basic.swift:6:9 - line:6:9] encoding=utf8 value="hello"))))))))
