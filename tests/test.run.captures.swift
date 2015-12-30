#!/usr/bin/env swift

func foo(val val: Int, next: (()->())? = nil) {
  print(val)
  next?()
}

func test() {
  var i = 10
  yield 10
  /// 10

  yield i + 2
  /// 12

  i = i * 2
  yield i
  /// 20
}

test()
