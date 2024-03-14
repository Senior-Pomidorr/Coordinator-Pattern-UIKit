//
//  ThirdViewControllerCoordinator.swift
//  Coordinator UIKit
//
//  Created by Daniil Kulikovskiy on 3/14/24.
//

import UIKit

class ThirdViewControllerCoordinator: CoreCoordinator {
    private var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    override func start() {
        let thirdViewController = ThirdViewController()
        thirdViewController.thirdViewControllerCoordinator = self
        navigationController.pushViewController(thirdViewController, animated: true)
    }
}
