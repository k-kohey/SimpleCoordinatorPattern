//
//  HomeNavigationCoordinator.swift
//  SimpleCoordinatorPattern
//
//  Created by kawaguchi kohei on 2019/02/10.
//  Copyright © 2019年 kawaguchi kohei. All rights reserved.
//

import UIKit

final class HomeNavigationCoordinator: NavigationCoordinator {
    internal let navigationController: UINavigationController

    init(presenter: UINavigationController) {
        navigationController = presenter
    }
    func start() {
        navigationController.viewControllers = [createHome()]
    }

    private func createHome() -> UIViewController {
        let callback = ViewController.Callback(
            detailPage: { [weak self] in
                guard let self = self else { return }
                self.navigationController.pushViewController(DetailViewController(), animated: true)
            }
        )

        let homeVc = ViewController()
        homeVc.transitionCallback = callback
        return homeVc
    }
}

