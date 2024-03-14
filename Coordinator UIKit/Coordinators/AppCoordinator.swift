//
//  AppCoordinator.swift
//  Coordinator UIKit
//
//  Created by Daniil Kulikovskiy on 3/14/24.
//

import UIKit

class AppCoordinator: CoreCoordinator {
    private var window: UIWindow
    private var navigationController: UINavigationController = {
        let navigationController = UINavigationController()
        // Custom settings for navigationController
        return navigationController
    }()
    
    init(window: UIWindow) {
        self.window = window
        self.window.rootViewController = navigationController
        self.window.makeKeyAndVisible()
    }
    
    override func start() {
        let mainViewControllerCoordinator = MainViewControllerCoordinator(navigationController: navigationController)
        addCorrdinator(add: mainViewControllerCoordinator)
        mainViewControllerCoordinator.start()
    }
}
