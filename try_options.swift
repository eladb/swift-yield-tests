//
//  main.swift
//  playground
//
//  Created by Elad Ben-Israel on 12/27/15.
//  Copyright © 2015 Citylifeapps Inc. All rights reserved.
//

//import Foundation

/*
 
func foo() -> AnyGenerator<Int> {
 var i = 100
 yield i
 i += 10
 yield i
 i += 20
 yield i + 30
}

*/

struct YieldValue<T>: ErrorType {
    let val: T
}

//func generator<T>(yielder: (yieldf: T throws -> ()) throws -> ()) -> AnyGenerator<T> {
//    var state = 0
//    return AnyGenerator {
//        var step = 0
//        do {
//            try yielder { ret_value in
//                if state == step {
//                    state += 1
//                    print("yield value \(ret_value)")
//                    throw YieldValue(val: ret_value)
//                }
//                step += 1
//            }
//        }
//        catch let yieldValue as YieldValue<T> {
//            return yieldValue.val
//        }
//        catch let err {
//            print("Error", err)
//        }
//        return nil
//    }
//}

func generator(yielder: (each: Int throws -> ()) throws -> ())  {
    do {
        try yielder { val in
            print("yield \(val)")
            throw YieldValue(val: val)
        }
    }
    catch {
        print("error")
    }
}
//
//func gen_test1() {
//    generator { value in
//        yield value(0000)
//        print("> begin")
//        yield value(1221)
//        print("> middle")
//        for i in 0..<10 {
//            yield value(i)
//        }
//        print("> end")
//        yield value(9999)
//    }
//}

func gen_test2() {
    generator { value in
        yield value(1221)
        yield value(9999)
    }
//    generator { yieldf in
//        print("pre: 11110")
//        try yieldf(11110)
//        print("post: 11110")
//        
//        print("pre: 200")
//        try yieldf(22220)
//        print("post: 200")
//        
//        print("pre: 300")
//        try yieldf(33330)
//        print("post: 300")
//    }
}

//
//func foo_throw() -> AnyGenerator<Int> {
//    return generator { yieldf in
//        print("====================================")
//    
//        print("step0")
//        var i = 100
//        print("yield0:", try yieldf(i))
//        
//        let j = 20
//        print("step1")
//        i += 10
//        print("yield1:", try yieldf(i))
//        
//        print("step2")
//        i += j
//        print("yield2:", try yieldf(i + 30))
//    }
//    
//}

//func foo_throw() -> AnyGenerator<Int> {
//    return generator { yieldf in
//        print("====================================")
//        
//        print("step0")
//        var i = 100
//        print("yield0:", yield yieldf(i))
//        
//        let j = 20
//        print("step1")
//        i += 10
//        print("yield1:", yield yieldf(i))
//        
//        print("step2")
//        i += j
//        print("yield2:", yield yieldf(i + 30))
//    }
//    
//}

gen_test2()
//print(Array(gen_test()))
//print(Array(foo_throw()))
//print(Array(foo()))
//print(Array(foo_goto()))
//print(Array(foo_step()))
