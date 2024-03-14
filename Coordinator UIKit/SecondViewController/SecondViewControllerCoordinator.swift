//
//  SecondViewControllerCoordinator.swift
//  Coordinator UIKit
//
//  Created by Daniil Kulikovskiy on 3/14/24.
//

import UIKit

class SecondViewControllerCoordinator: CoreCoordinator {
    private var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    override func start() {
        let secondViewController = SecondViewController()
        secondViewController.secondViewControllerCoordinator = self
        navigationController.pushViewController(secondViewController, animated: true)
    }
}
