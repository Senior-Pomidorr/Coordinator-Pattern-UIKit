//
//  CoordinatorProtocol.swift
//  Coordinator UIKit
//
//  Created by Daniil Kulikovskiy on 3/14/24.
//

import Foundation

protocol CoordinatorProtocol: AnyObject {
    var childCoordinators: [CoordinatorProtocol] { get set }
    func start()
}

extension CoordinatorProtocol {
    func addCorrdinator(add: CoordinatorProtocol) {
        childCoordinators.append(add)
    }
    
    func removeCoordinator(remove: CoordinatorProtocol) {
        childCoordinators = childCoordinators.filter{ $0 !== remove }
    }
    
}
