//
//  CoreCoordinator.swift
//  Coordinator UIKit
//
//  Created by Daniil Kulikovskiy on 3/14/24.
//

import Foundation

class CoreCoordinator: CoordinatorProtocol {
    var childCoordinators: [CoordinatorProtocol] = []
    
    func start() {
        fatalError("Child should implement func start")
    }
    
    
}
