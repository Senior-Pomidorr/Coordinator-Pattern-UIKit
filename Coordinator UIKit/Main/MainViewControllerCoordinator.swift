//
//  MainViewControllerCoordinator.swift
//  Coordinator UIKit
//
//  Created by Daniil Kulikovskiy on 3/14/24.
//

import UIKit

class MainViewControllerCoordinator: CoreCoordinator {
    private var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    override func start() {
        let mainViewController = MainViewController()
        mainViewController.mainViewControllerCoordinator = self
        navigationController.pushViewController(mainViewController, animated: true)
    }
    
    func runSecondVC() {
        let secondViewControllerCoordinator = SecondViewControllerCoordinator(navigationController: navigationController)
        secondViewControllerCoordinator.start()
    }
    
    func runThirdVC() {
        let thirdViewController = ThirdViewControllerCoordinator(navigationController: navigationController)
        thirdViewController.start()
    }
}
