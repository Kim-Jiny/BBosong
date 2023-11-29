//
//  Coordinator.swift
//  BBosong
//
//  Created by 김미진 on 11/29/23.
//

import UIKit

protocol Coordinator {
    var navigationController: UINavigationController { get set }
    func start()
}

extension Coordinator {
    func present(_ viewController: UIViewController) {
        navigationController.present(viewController, animated: true, completion: nil)
    }

    func push(_ viewController: UIViewController) {
        navigationController.pushViewController(viewController, animated: true)
    }

    func pop() {
        navigationController.popViewController(animated: true)
    }
}
