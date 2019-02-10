//
//  AppCoordinator.swift
//  SimpleCoordinatorPattern
//
//  Created by kawaguchi kohei on 2019/02/10.
//  Copyright © 2019年 kawaguchi kohei. All rights reserved.
//

import UIKit

final class AppCoordinator: Coordinator {
    var presenter: UIViewController?
    private var childCoordinator: Coordinator?

    func start() {
        let isFirstOpen = false

        if isFirstOpen {
            showTutorial()
        } else {
            showTab()
        }
    }

    private func showTab() {
        let coordinator = TabBarCoordinator(presenter: UITabBarController())
        childCoordinator = coordinator
        presenter = coordinator.presenter
        coordinator.start()
    }

    private func showTutorial() {
        // if you create Tutorial page, replace the below
        showTab()
    }
}

