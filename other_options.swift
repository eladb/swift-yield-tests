//
//  other_options.swift
//  playground
//
//  Created by Elad Ben-Israel on 12/27/15.
//  Copyright © 2015 Citylifeapps Inc. All rights reserved.
//

import Foundation

func foo() -> AnyGenerator<Int> {
    var i = 100
    let yields: [()->Int] = [
        {
            print("step0")
            return i
        },
        {
            print("step1")
            i += 10
            return i
        },
        {
            print("step2")
            i += 20
            return i + 30
        }
    ]
    var currIndex = 0
    return AnyGenerator {
        if currIndex >= yields.endIndex { return nil }
        let curr = yields[currIndex]
        currIndex++
        return curr()
    }
}

func foo_goto() -> AnyGenerator<Int> {
    var state = 0
    func yield(@autoclosure fn: () -> Int) -> Int {
        state++
        return fn()
    }
    return AnyGenerator {
        var _step = 0
        print("step0")
        var i = 100
        if (state == _step++) {
            return yield(i)
        }
        
        print("step1")
        i += 10
        if (state == _step++) {
            return yield(i)
        }
        
        print("step2")
        i += 20
        if (state == _step++) {
            return yield(i + 30)
        }
        
        return nil
    }
}


func step_generator<T>(stepper: (step: (() -> T) -> ()) -> ()) -> AnyGenerator<T> {
    
    var steps: [()->T] = [ ]
    
    func on_step(step_fn: () -> T) {
        steps.append(step_fn)
    }
    
    stepper(step: on_step)
    
    var state = 0
    return AnyGenerator {
        if state >= steps.endIndex { return nil }
        return steps[state++]()
    }
}

func foo_step() -> AnyGenerator<Int> {
    return step_generator { step in
        print("====================================")
        
        var i = 100
        
        step {
            print("step0")
            return i
        }
        
        step {
            print("step1")
            i += 10
            return i
        }
        
        step {
            print("step2")
            i += 20
            return i + 30
        }
    }
}


