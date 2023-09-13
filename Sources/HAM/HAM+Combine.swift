//
//  HAM+Combine.swift
//  HAM
//
//  Created by Daniel Amitay on 9/12/23.
//

import Combine

extension Publisher where Failure == Never {
    public func then(receiveValue: @escaping ((Output) -> Void)) -> AnyCancellable {
        return sink(receiveValue: receiveValue)
    }
    public func matches(_ isIncluded: @escaping (Output) -> Bool) -> Publishers.Filter<Self> {
        return filter(isIncluded)
    }
    public func convert<T>(_ transform: @escaping (Self.Output) -> T) -> Publishers.Map<Self, T> {
        return map(transform)
    }
}

extension Publisher where Failure == Never {
    public func thenForever(receiveValue: @escaping ((Output) -> Void)) {
        return sink(receiveValue: receiveValue).forever()
    }
}

extension AnyCancellable {
    func forever() {}
}
