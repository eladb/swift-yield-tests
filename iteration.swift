#!/usr/bin/env swift

func foo(val val: Int, next: (()->())? = nil) {
  print(val, next)
  next?()
}
//
// func actual(flag: Bool) {
//   if flag {
//     yield 10
//   }
//
//   print("20")
// }

func expected(flag: Bool) {
  func continuation_1() {
    print("20")
  }

  if flag {
    return foo(val: 10, next: continuation_1)
  }

  continuation_1()
}

func yield_loop_actual() {
  for i in 0..<10 {
    yield i
  }

  print("done")
}

func yield_loop_expected() {
  for i in 0..<10 {
    return foo(val: i, next: {
      print("done")
    })
  }

  print("done")
}

// actual(true)
expected(true)
print("-")
expected(false)
