#!/usr/bin/env swift

func foo(val val: Int, next: (()->())? = nil) {
  print(val)
  next?()
}

func test(flag: Bool) {
  if flag {
    yield "hello"
  }
  else {
    yield "world"
  }
}

test(true)
test(false)
