//
//  CoordinatorProtocols.swift
//  SimpleCoordinatorPattern
//
//  Created by kawaguchi kohei on 2019/02/10.
//  Copyright © 2019年 kawaguchi kohei. All rights reserved.
//

import UIKit

protocol Coordinator {
    func start()
}

protocol NavigationCoordinator: Coordinator {
    var navigationController: UINavigationController { get }
}

extension NavigationCoordinator {
    var presenter: UIViewController { return navigationController }
}

protocol TabCoordinator: Coordinator {
    var tabBarController: UITabBarController { get }
}

extension TabCoordinator {
    var presenter: UIViewController { return tabBarController }
}
