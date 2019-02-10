//
//  TabCoordinator.swift
//  SimpleCoordinatorPattern
//
//  Created by kawaguchi kohei on 2019/02/10.
//  Copyright © 2019年 kawaguchi kohei. All rights reserved.
//

import UIKit

final class TabBarCoordinator: TabCoordinator {
    internal let tabBarController: UITabBarController

    init(presenter: UITabBarController) {
        tabBarController = presenter
    }

    private var childCooordinators: [NavigationCoordinator] = {
        let firstVC = HomeNavigationCoordinator(presenter: UINavigationController())
        firstVC.presenter.tabBarItem = UITabBarItem(tabBarSystemItem: .bookmarks, tag: 0)

        let secondVC = HomeNavigationCoordinator(presenter: UINavigationController())
        secondVC.presenter.tabBarItem = UITabBarItem(tabBarSystemItem: .bookmarks, tag: 0)
        return [firstVC, secondVC]
    }()

    func start() {
        tabBarController.viewControllers = childCooordinators.map { $0.presenter }
        childCooordinators.forEach { $0.start() }
    }
}
