#!/usr/bin/env swift

func foo(val val: Int, next: (()->())? = nil) {
  print(val)
  next?()
}

func test() {
  print("before 10")
  yield 10
  print("before 20")
  yield 20
  print("before 30")
  yield 30
  print("end")
}

test()

/// before 10
/// 10
/// before 20
/// 20
/// before 30
/// 30
/// end
