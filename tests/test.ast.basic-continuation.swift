#!/usr/bin/env swiftc -dump-ast

func foo(val val: String, next: (() -> ())? = nil) { }

func test() {
  yield "hello"
  print("continue here")
}

/// (source_file
///   (func_decl "foo(val:next:)" type='(val: String, next: (() -> ())?) -> ()' access=internal
///     (body_params
///       (pattern_tuple type='(val: String, next: (() -> ())?)' names=val,next
///         (pattern_typed type='String'
///           (pattern_named type='String' 'val')
///           (type_ident
///             (component id='String' bind=Swift.(file).String)))
///         (pattern_typed type='(() -> ())?'
///           (pattern_named type='(() -> ())?' 'next')
/// )
///         (call_expr implicit type='(() -> ())?' location=tests/test.ast.basic-continuation.swift:3:47 range=[tests/test.ast.basic-continuation.swift:3:47 - line:3:47] nothrow
///           (constructor_ref_call_expr implicit type='(nilLiteral: ()) -> (() -> ())?' location=tests/test.ast.basic-continuation.swift:3:47 range=[tests/test.ast.basic-continuation.swift:3:47 - line:3:47] nothrow
///             (declref_expr implicit type='Optional<(() -> ())>.Type -> (nilLiteral: ()) -> (() -> ())?' location=tests/test.ast.basic-continuation.swift:3:47 range=[tests/test.ast.basic-continuation.swift:3:47 - line:3:47] decl=Swift.(file).Optional.init(nilLiteral:) [with Wrapped=(() -> ())] specialized=no)
///             (type_expr implicit type='(() -> ())?.Type' location=tests/test.ast.basic-continuation.swift:3:47 range=[tests/test.ast.basic-continuation.swift:3:47 - line:3:47] typerepr='(() -> ())?'))
///           (tuple_expr implicit type='(nilLiteral: ())' location=tests/test.ast.basic-continuation.swift:3:47 range=[tests/test.ast.basic-continuation.swift:3:47 - line:3:47] names=nilLiteral
///             (tuple_expr implicit type='()' location=tests/test.ast.basic-continuation.swift:3:47 range=[tests/test.ast.basic-continuation.swift:3:47 - line:3:47])))))
///     (brace_stmt))
///------------------------------------------------------------------------------------------------------------------
///   (func_decl "test()" type='() -> ()' access=internal
///     (body_params
///       (pattern_tuple type='()' names=))
///     (brace_stmt
///       (return_stmt
///         (call_expr implicit type='()' location=tests/test.ast.basic-continuation.swift:6:9 range=[tests/test.ast.basic-continuation.swift:6:9 - line:8:1] nothrow
///           (declref_expr implicit type='(val: String, next: (() -> ())?) -> ()' location=tests/test.ast.basic-continuation.swift:6:9 range=[tests/test.ast.basic-continuation.swift:6:9 - line:6:9] decl=main.(file).foo(val:next:)@tests/test.ast.basic-continuation.swift:3:6 specialized=no)
///           (tuple_shuffle_expr implicit type='(val: String, next: (() -> ())?)' location=tests/test.ast.basic-continuation.swift:6:9 range=[tests/test.ast.basic-continuation.swift:6:9 - line:8:1] elements=[0, 1] variadic_sources=[]
///             (tuple_expr implicit type='(val: String, next: (() -> ())?)' location=tests/test.ast.basic-continuation.swift:6:9 range=[tests/test.ast.basic-continuation.swift:6:9 - line:8:1] names=val,next
///               (call_expr implicit type='String' location=tests/test.ast.basic-continuation.swift:6:9 range=[tests/test.ast.basic-continuation.swift:6:9 - line:6:9] nothrow
///                 (constructor_ref_call_expr implicit type='(_builtinStringLiteral: RawPointer, byteSize: Word, isASCII: Int1) -> String' location=tests/test.ast.basic-continuation.swift:6:9 range=[tests/test.ast.basic-continuation.swift:6:9 - line:6:9] nothrow
///                   (declref_expr implicit type='String.Type -> (_builtinStringLiteral: RawPointer, byteSize: Word, isASCII: Int1) -> String' location=tests/test.ast.basic-continuation.swift:6:9 range=[tests/test.ast.basic-continuation.swift:6:9 - line:6:9] decl=Swift.(file).String.init(_builtinStringLiteral:byteSize:isASCII:) specialized=no)
///                   (type_expr implicit type='String.Type' location=tests/test.ast.basic-continuation.swift:6:9 range=[tests/test.ast.basic-continuation.swift:6:9 - line:6:9] typerepr='String'))
///                 (string_literal_expr type='(_builtinStringLiteral: Builtin.RawPointer, byteSize: Builtin.Word, isASCII: Builtin.Int1)' location=tests/test.ast.basic-continuation.swift:6:9 range=[tests/test.ast.basic-continuation.swift:6:9 - line:6:9] encoding=utf8 value="hello"))
///               (inject_into_optional implicit type='(() -> ())?' location=tests/test.ast.basic-continuation.swift:6:9 range=[tests/test.ast.basic-continuation.swift:6:9 - line:8:1]
///                 (closure_expr implicit type='() -> ()' location=tests/test.ast.basic-continuation.swift:6:9 range=[tests/test.ast.basic-continuation.swift:6:9 - line:8:1] discriminator=1
///                   (brace_stmt
///                     (call_expr type='()' location=tests/test.ast.basic-continuation.swift:7:3 range=[tests/test.ast.basic-continuation.swift:7:3 - line:7:24] nothrow
///                       (declref_expr type='(Any..., separator: String, terminator: String) -> ()' location=tests/test.ast.basic-continuation.swift:7:3 range=[tests/test.ast.basic-continuation.swift:7:3 - line:7:3] decl=Swift.(file).print(_:separator:terminator:) specialized=no)
///                       (tuple_shuffle_expr implicit type='(Any..., separator: String, terminator: String)' location=tests/test.ast.basic-continuation.swift:7:9 range=[tests/test.ast.basic-continuation.swift:7:8 - line:7:24] sourceIsScalar elements=[-2, -1, -1] variadic_sources=[0]
///                         (paren_expr type='Any' location=tests/test.ast.basic-continuation.swift:7:9 range=[tests/test.ast.basic-continuation.swift:7:8 - line:7:24]
///                           (erasure_expr implicit type='Any' location=tests/test.ast.basic-continuation.swift:7:9 range=[tests/test.ast.basic-continuation.swift:7:9 - line:7:9]
///                             (call_expr implicit type='String' location=tests/test.ast.basic-continuation.swift:7:9 range=[tests/test.ast.basic-continuation.swift:7:9 - line:7:9] nothrow
///                               (constructor_ref_call_expr implicit type='(_builtinStringLiteral: RawPointer, byteSize: Word, isASCII: Int1) -> String' location=tests/test.ast.basic-continuation.swift:7:9 range=[tests/test.ast.basic-continuation.swift:7:9 - line:7:9] nothrow
///                                 (declref_expr implicit type='String.Type -> (_builtinStringLiteral: RawPointer, byteSize: Word, isASCII: Int1) -> String' location=tests/test.ast.basic-continuation.swift:7:9 range=[tests/test.ast.basic-continuation.swift:7:9 - line:7:9] decl=Swift.(file).String.init(_builtinStringLiteral:byteSize:isASCII:) specialized=no)
///                                 (type_expr implicit type='String.Type' location=tests/test.ast.basic-continuation.swift:7:9 range=[tests/test.ast.basic-continuation.swift:7:9 - line:7:9] typerepr='String'))
///                               (string_literal_expr type='(_builtinStringLiteral: Builtin.RawPointer, byteSize: Builtin.Word, isASCII: Builtin.Int1)' location=tests/test.ast.basic-continuation.swift:7:9 range=[tests/test.ast.basic-continuation.swift:7:9 - line:7:9] encoding=utf8 value="continue here"))))))))))))))))
