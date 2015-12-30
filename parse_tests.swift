//
//  parse_tests.swift
//  playground
//
//  Created by Elad Ben-Israel on 12/28/15.
//  Copyright © 2015 Citylifeapps Inc. All rights reserved.
//

import Swift

//(brace_stmt
//    (yield_expr type='<null>'
//        (integer_literal_expr type='<null>' value=10)))))
func test1() {
    yield 10
}

//(brace_stmt
//    (pattern_binding_decl
//        (pattern_named 'foo')
//        (yield_expr type='<null>'
//            (integer_literal_expr type='<null>' value=1234)))
//
//    (var_decl "foo" type='<null type>' storage_kind=stored)
//
//    (call_expr type='<null>'
//        (unresolved_decl_ref_expr type='<null>' name=print specialized=no)
//        (paren_expr type='<null>'
//            (yield_expr type='<null>'
//                (integer_literal_expr type='<null>' value=111)))))))
func test2() {
    var foo = yield 1234
    print(yield 111)
}

//(brace_stmt
//    (yield_expr type='<null>'
//        (sequence_expr type='<null>'
//            (integer_literal_expr type='<null>' value=1)
//            (unresolved_decl_ref_expr type='<null>' name=+ specialized=no)
//            (integer_literal_expr type='<null>' value=2)
//            (unresolved_decl_ref_expr type='<null>' name=+ specialized=no)
//            (integer_literal_expr type='<null>' value=3))))))
func test3() {
    yield 1 + 2 + 3
}

//(brace_stmt
//    (if_stmt
//        (paren_expr type='<null>'
//            (yield_expr type='<null>'
//                (call_expr type='<null>'
//                    (unresolved_decl_ref_expr type='<null>' name=foo specialized=no)
//                    (tuple_expr type='<null>'))))
//            (brace_stmt
//                (call_expr type='<null>'
//                    (unresolved_decl_ref_expr type='<null>' name=print specialized=no)
//                    (paren_expr type='<null>'
//                        (string_literal_expr type='<null>' encoding=utf8 value="yes"))))))))
func test4() {
    if (yield foo()) {
        print("yes")
    }
}

//(brace_stmt
//    (return_stmt
//        (yield_expr type='<null>'
//            (sequence_expr type='<null>'
//                (integer_literal_expr type='<null>' value=12)
//                (unresolved_decl_ref_expr type='<null>' name=* specialized=no)
//                (integer_literal_expr type='<null>' value=3)))))))
func test5() {
    return yield 12 * 3
}

//(brace_stmt
//    (pattern_binding_decl
//        (pattern_named 'i')
//        (sequence_expr type='<null>'
//            (paren_expr type='<null>'
//                (yield_expr type='<null>'
//                    (integer_literal_expr type='<null>' value=10)))
//            (unresolved_decl_ref_expr type='<null>' name=+ specialized=no)
//            (paren_expr type='<null>'
//                (yield_expr type='<null>'
//                    (integer_literal_expr type='<null>' value=20)))))
//
func test6() {
    var i = (yield 10) + (yield 20)
}
