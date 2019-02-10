//
//  HomeViewController.swift
//  SimpleCoordinatorPattern
//
//  Created by kawaguchi kohei on 2019/02/10.
//  Copyright © 2019年 kawaguchi kohei. All rights reserved.
//

import UIKit

final class ViewController: UIViewController {
    struct Callback {
        var detailPage: () -> ()
    }

    var transitionCallback: Callback?

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .gray

        let button = UIButton(frame: CGRect(x: 150, y: 300, width: 300, height: 300))
        button.backgroundColor = .blue
        button.addTarget(self, action: #selector(didTappedButton), for: .touchUpInside)
        view.addSubview(button)
    }

    @objc private func didTappedButton() {
        transitionCallback?.detailPage()
    }
}
