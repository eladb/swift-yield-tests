struct GeneratorFunction<T>: GeneratorType, SequenceType {
    typealias Element = T
    var _retval: T?
    var _next: (() -> GeneratorFunction<T>)? = nil
    init(retval: T? = nil, next: (() -> GeneratorFunction<T>)? = nil) {
        _retval = retval
        _next = next
    }
    mutating func next() -> T? {
        if _retval != nil {
            let tmp = _retval
            _retval = nil
            return tmp
        }

        // Check if we have a continuation
        if let next = _next {
            let next_gen = next()
            _next = next_gen._next
            return next_gen._retval
        }

        // End of sequence
        return nil
    }
}

func foo<T>(val val: T? = nil, next: (() -> GeneratorFunction<T>)? = nil) -> GeneratorFunction<T> {
    return GeneratorFunction(retval: val, next: next)
}
