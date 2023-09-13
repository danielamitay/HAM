//
//  HAM.swift
//  HAM
//
//  Created by Daniel Amitay on 9/12/23.
//

import Combine

public struct HAM {
    struct When {}
    static let when = When()
}

// MARK: Examples
extension HAM {
    func examples() {
        HAM.when.view.then { view in }.forever()
        HAM.when.view.thenForever { view in }
        let cancellable = HAM.when.controller.view.then { view in }
        cancellable.cancel()
    }
}
