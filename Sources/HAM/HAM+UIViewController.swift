//
//  HAM+UIViewController.swift
//  HAM
//
//  Created by Daniel Amitay on 9/12/23.
//

import Combine
import UIKit

extension HAM.When {
    var controller: AnyPublisher<UIViewController, Never> {
        return PassthroughSubject<UIViewController, Never>().eraseToAnyPublisher()
    }
}

extension Publisher where Output == UIViewController, Failure == Never {
    var view: AnyPublisher<UIView, Never> {
        return map { controller in
            return controller.view
        }.eraseToAnyPublisher()
    }
}

extension Publisher where Output == UIViewController?, Failure == Never {
    var view: AnyPublisher<UIView?, Never> {
        return map { controller in
            return controller?.view
        }.eraseToAnyPublisher()
    }
}
