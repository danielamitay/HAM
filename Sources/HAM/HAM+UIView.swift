//
//  HAM+UIView.swift
//  HAM
//
//  Created by Daniel Amitay on 9/12/23.
//

import Combine
import UIKit

extension HAM.When {
    var view: AnyPublisher<UIView, Never> {
        return PassthroughSubject<UIView, Never>().eraseToAnyPublisher()
    }
}

extension Publisher where Output == UIView, Failure == Never {
    var controller: AnyPublisher<UIViewController, Never> {
        return map { view in
            return UIViewController()
        }.eraseToAnyPublisher()
    }
    func matches(accessibilityIdentifier: String?) -> Publishers.Filter<Self> {
        return matches { view in
            return view.accessibilityIdentifier == accessibilityIdentifier
        }
    }
}
